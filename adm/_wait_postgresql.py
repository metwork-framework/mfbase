#!/usr/bin/env python3

import sys
import os
import psycopg2
import datetime

USERNAME = os.environ["MFBASE_POSTGRESQL_USERNAME"]
PASSWORD = os.environ["MFBASE_POSTGRESQL_PASSWORD"]
HOST = "localhost"
DBNAME = "postgres"
PORT = int(os.environ["MFBASE_POSTGRESQL_PORT"])
TIMEOUT = 30


def pgping(host, port, user, dbname, password, connect_timeout=10):
    try:
        conn = psycopg2.connect(host=host, port=port, user=user,
                                dbname=dbname, password=password,
                                connect_timeout=connect_timeout)
        cur = conn.cursor()
        cur.execute("SELECT current_timestamp")
        if (cur.fetchall()[0][0].year >= 1900):
            return True
    except Exception as e:
        return False


first = datetime.datetime.now()
while (datetime.datetime.now() - first).total_seconds() <= TIMEOUT:
    res = pgping(HOST, PORT, USERNAME, DBNAME, PASSWORD)
    if res:
        print("ok")
        sys.exit(0)

print("not connected")
sys.exit(1)
