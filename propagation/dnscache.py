#!/usr/bin/env python

import dns.resolver
import pylibmc
import json

from IPy import IP

__author__ = 'Damian Myerscough'
__email__ = 'Damian.Myerscough@gmail.com'


class TrackMyDNS:
    """
    The class queries domain from selected nameservers, when the results have
    been captures they are stored in memcache until the TTL on the domain name
    expires.

    If the domain exists in memcache the results are taken from there, results
    stay in memcache until the domain's TTL expires thus expiring the object in
    memcache

    >>> MyDNS = TrackMyDNS('172.16.105.141')
    >>> MyDNS.query('example.com', 'A', '8.8.8.8')
    {'8.8.8.8': ['93.184.216.119']}

    >>> MyDNS.query('example.com', 'A', '8.8.4.4')
    {'8.8.4.4': ['93.184.216.119']}

    >>> MyDNS.dump_cache('example.com', 'A')
    {'example.com': {'A': {'8.8.8.8': ['93.184.216.119']}}}

    >>> MyDNS.query(DOMAIN, RecordType, '62.181.119.131', fmt='json')
    {"SERVER": [{"status": "online", "results": ["93.184.216.119"], "success": "ok"}]}

    """

    def __init__(self, memcache):
        try:
            self.mc = pylibmc.Client([memcache], binary=True, behaviors={"tcp_nodelay": True, "ketama": True})
        except:
            raise ConnErr("Unable to connect to {0}".format(memcache))

    def query(self, domain, record_type, nameserver, fmt=None):
        """
        This function will query a domain against the users specified nameserver
        for a user defined resource record. The resource records support

        - A	(Address Record)
        - AAAA	(IPv6 Address Record)
        - CNAME	(Canonical Name)
        - MX	(Mail Exchange)
        - NS	(Nameserver)
        - SOA	(Start of Authority)
        - TXT	(Text)

        """

        if self.mc.get(domain + "-" + record_type):
            if nameserver not in self.mc.get(domain + "-" + record_type)[domain][record_type]:
                self._query_nameserver(domain, record_type, nameserver)
        else:
            self._query_nameserver(domain, record_type, nameserver)

        query_results = self.mc.get(domain + "-" + record_type)[domain][record_type]

        # Return the results in JSON format
        if fmt == "json":
            status = 'ok'

            # Check to see if we have an IP address otherwise
            # set the image to failed
            for i in query_results.values():
                if i == '-':
                    status = 'fail'
                    break

            return json.dumps({'SERVER': [{'results': query_results.values()[0],
                                           'status': 'online',
                                           'success': status}]})
        else:
            return self.mc.get(domain + "-" + record_type)[domain][record_type]

    def _query_nameserver(self, domain, record_type, nameserver):
        """
        Query the remote nameserver for the users requested domain and
        record type. Once a result has been queries store the results in
        memcache and set the expiry to the TTL

        """
        if self.mc.get(domain + "-" + record_type):
            responses = self.mc.get(domain + "-" + record_type)
        else:
            responses = {}

        mc_ttl = 0

        res = dns.resolver.Resolver()

        res.nameservers = [nameserver]
        res.timeout = 2
        res.lifetime = 2.0

        try:
            answer = res.query(domain, record_type)

            if answer.rrset.ttl > mc_ttl:
                mc_ttl = answer.rrset.ttl

        except (dns.resolver.NoNameservers, dns.resolver.NoAnswer, dns.resolver.NXDOMAIN, dns.resolver.Timeout):
            if responses.get(domain):
                responses[domain][record_type][nameserver] = "-"
            else:
                responses[domain] = {record_type: {nameserver: "-"}}

            return self.mc.set(domain + "-" + record_type, responses, time=mc_ttl)

        if responses.get(domain):
            responses[domain][record_type][nameserver] = [str(i) for i in answer.rrset]
        else:
            responses[domain] = {record_type: {nameserver: [str(i) for i in answer.rrset]}}

        return self.mc.set(domain + "-" + record_type, responses, time=mc_ttl)

    def dump_cache(self, domain, record_type):
        """
        Dump the current memcache status
        """
        return self.mc.get(domain + "-" + record_type)


if __name__ == '__main__':
    DOMAIN = "example.com"
    RecordType = 'A'

    myDNS = TrackMyDNS('172.16.105.141')

    print myDNS.query(DOMAIN, RecordType, '62.181.119.131')
    print myDNS.query(DOMAIN, RecordType, '8.8.8.8', fmt="json")

    print myDNS.dump_cache(DOMAIN, RecordType)
