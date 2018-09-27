#!/usr/bin/env python3

import sys
import os
import psycopg2

USERNAME = os.environ["MFBASE_POSTGRESQL_USERNAME"]
PASSWORD = os.environ["MFBASE_POSTGRESQL_PASSWORD"]
HOST = "localhost"
DBNAME = "postgres"
PORT = int(os.environ["MFBASE_POSTGRESQL_PORT"])

try:
    conn = psycopg2.connect(host=HOST, port=PORT, user=USERNAME, dbname=DBNAME,
                            password=PASSWORD, connect_timeout=10)
    cur = conn.cursor()
    cur.execute("SELECT current_timestamp")
    if (cur.fetchall()[0][0].year >= 1900):
        print("ok")
        sys.exit(0)
except Exception as e:
    pass

print("not connected")
sys.exit(1)
