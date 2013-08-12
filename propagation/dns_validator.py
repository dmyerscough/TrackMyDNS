#!/usr/bin/env python

import dns.resolver
import psycopg2
import urlparse
import time
import os


if __name__ == '__main__':

    countries = ['AUS', 'BRA', 'CAN', 'CHN', 'FRA', 'GBR', 'GER', 'ITA',
                 'JPN', 'MAS', 'NZL', 'RSA', 'RUS', 'SWE', 'TUR', 'USA']

    YAHOO_IP = ['206.190.36.45', '98.138.253.109', '98.139.183.24']

    urlparse.uses_netloc.append("postgres")
    url = urlparse.urlparse(os.environ["DATABASE_URL"])

    conn = psycopg2.connect(database=url.path[1:],
                            user=url.username,
                            password=url.password,
                            host=url.hostname,
                            port=url.port)
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

                if answer[0].address in YAHOO_IP:
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
