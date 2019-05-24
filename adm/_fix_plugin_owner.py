#!/usr/bin/env python3

import os
import psycopg2
import argparse

USERNAME = os.environ["MFBASE_POSTGRESQL_USERNAME"]
PASSWORD = os.environ["MFBASE_POSTGRESQL_PASSWORD"]
HOST = "localhost"
PORT = int(os.environ["MFBASE_POSTGRESQL_PORT"])
TIMEOUT = 30
DESCRIPTION = "fix plugin database objects ownership"

parser = argparse.ArgumentParser(description=DESCRIPTION)
parser.add_argument("plugin_dbname", help="plugin dbname")
parser.add_argument("plugin_user", help="plugin user")
args = parser.parse_args()

dbname = args.plugin_dbname
conn = psycopg2.connect(host=HOST, port=PORT, user=USERNAME, dbname=dbname,
                        password=PASSWORD, connect_timeout=TIMEOUT)
conn.autocommit = True
cur = conn.cursor()
sql1 = "SELECT schemaname, tablename FROM pg_tables WHERE NOT schemaname in " \
    "('pg_catalog', 'information_schema') AND tableowner <> '%s' " % \
    args.plugin_user
cur.execute(sql1)
for schema, table in cur.fetchall():
    sql2 = "ALTER TABLE %s.%s OWNER TO %s" % (schema, table, args.plugin_user)
    print(sql2)
    cur.execute(sql2)

sql3 = "SELECT schemaname, sequencename FROM pg_sequences WHERE NOT " \
    "schemaname in ('pg_catalog', 'information_schema') AND " \
    "sequenceowner <> '%s'" % args.plugin_user
cur.execute(sql3)
for schema, table in cur.fetchall():
    sql4 = "ALTER SEQUENCE %s.%s OWNER TO %s" % (schema, table,
                                                 args.plugin_user)
    print(sql4)
    cur.execute(sql4)

sql5 = "SELECT schemaname, viewname FROM pg_views WHERE NOT " \
    "schemaname in ('pg_catalog', 'information_schema') AND " \
    "viewowner <> '%s'" % args.plugin_user
cur.execute(sql5)
for schema, table in cur.fetchall():
    sql6 = "ALTER VIEW %s.%s OWNER TO %s" % (schema, table,
                                             args.plugin_user)
    print(sql6)
    cur.execute(sql6)
