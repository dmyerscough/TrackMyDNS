#!/usr/bin/env python

import dns.resolver
import psycopg2
import time


if __name__ == '__main__':

    countries = ['AUS', 'BRA', 'CAN', 'CHN', 'FRA', 'GBR', 'GER', 'ITA',
                 'JPN', 'MAS', 'NZL', 'RSA', 'RUS', 'SWE', 'TUR', 'USA']

    conn = psycopg2.connect("dbname=trackmydns user=damian password=s4fem0de host=172.16.105.141")
    cur = conn.cursor()
    update = conn.cursor()

    for country in countries:
        cur.execute("SELECT id, ip, responsetime FROM propagation_dns WHERE country_id = (SELECT id FROM propagation_countries WHERE country = '{0}') ORDER BY responsetime".format(country))

        for ns in cur.fetchall():
            res = dns.resolver.Resolver()

            # Configure nameserver and make sure we don't spend too long waiting
            # for the hosts to timeout
            res.nameservers = [ns[1]]
            res.timeout = 2
            res.lifetime = 2.0

            start_time = time.time()
            try:
                answer = res.query('yahoo.com', 'A')

                if '206.190.36.45' or '98.138.253.109' or '98.139.183.24' == answer[0].address:
                    pass
                else:
                    update.execute("UPDATE propagation_dns SET reason = '{0}', Available = False, malicious = True WHERE id = '{1}'".format('Resolved domain incorrectly', ns[0]))
                    conn.commit()
                    continue

            except dns.exception.Timeout:
                update.execute("UPDATE propagation_dns SET reason = '{0}', Available = False WHERE id = '{1}'".format('Timed Out', ns[0]))
                conn.commit()
                continue
            except (dns.resolver.NoNameservers, dns.resolver.NoAnswer):
                update.execute("UPDATE propagation_dns SET reason = '{0}', Available = False WHERE id = '{1}'".format('No Response', ns[0]))
                conn.commit()
                continue

            lookup_time = time.time() - start_time
            if lookup_time < ns[2]:
                print "{0} has a faster response time".format(ns[1])

                update.execute("UPDATE propagation_dns SET ResponseTime = {0} WHERE id = {1}".format(lookup_time, ns[0]))
                conn.commit()
            else:
                print "{0} is slower that the previous response time".format(ns[1])

            # This will make sure any previously disabled propagation_dns queries that are responding again
            # will be re-enabled
            update.execute("UPDATE propagation_dns SET reason = '{0}', Available = True WHERE id = {1}".format('OK', ns[0]))
            conn.commit()

    cur.close()
    update.close()
