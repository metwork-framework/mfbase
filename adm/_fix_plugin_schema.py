#!/usr/bin/env python3

import os
import psycopg2
import argparse

USERNAME = os.environ["MFBASE_POSTGRESQL_USERNAME"]
PASSWORD = os.environ["MFBASE_POSTGRESQL_PASSWORD"]
HOST = "localhost"
PORT = int(os.environ["MFBASE_POSTGRESQL_PORT"])
TIMEOUT = 30
DESCRIPTION = "fix plugin database objects schema. " \
              "from 'public' to plugin's schema"

parser = argparse.ArgumentParser(description=DESCRIPTION)
parser.add_argument("plugin_dbname", help="plugin dbname")
parser.add_argument("plugin_user", help="plugin user")
args = parser.parse_args()

dbname = args.plugin_dbname
conn = psycopg2.connect(host=HOST, port=PORT, user=USERNAME, dbname=dbname,
                        password=PASSWORD, connect_timeout=TIMEOUT)
conn.autocommit = True
cur = conn.cursor()

# TABLES
sql1 = "SELECT tablename FROM pg_tables WHERE schemaname='public' " \
    "AND tablename <> 'spatial_ref_sys'"
cur.execute(sql1)
for table in cur.fetchall():
    sql2 = "ALTER TABLE public.%s SET SCHEMA %s" % (table[0], args.plugin_user)
    print(sql2)
    #cur.execute(sql2)

# SEQUENCES
sql3 = "SELECT sequencename FROM pg_sequences WHERE schemaname='public'"
cur.execute(sql3)
for sequence in cur.fetchall():
    sql4 = "ALTER SEQUENCE public.%s SET SCHEMA %s" % (sequence[0], args.plugin_user)
    print(sql4)
    #cur.execute(sql4)

# INDEXES
sql5 = "SELECT indexname FROM pg_indexes WHERE schemaname='public' " \
    "AND tablename <> 'spatial_ref_sys'"
cur.execute(sql5)
for index in cur.fetchall():
    sql6 = "ALTER INDEX public.%s SET SCHEMA %s" % (index[0], args.plugin_user)
    print(sql6)
    #cur.execute(sql6)
