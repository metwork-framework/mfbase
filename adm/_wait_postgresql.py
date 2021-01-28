#!/usr/bin/env python3

import sys
import os
import psycopg2
import datetime
import time
from mfutil.cli import MFProgress

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
    except Exception:
        return False


with MFProgress() as progress:
    t = progress.add_task("- Waiting for postgresql to be ready...", total=TIMEOUT)
    before = datetime.datetime.now()
    after = datetime.datetime.now()
    while (after - before).total_seconds() < TIMEOUT:
        res = pgping(HOST, PORT, USERNAME, DBNAME, PASSWORD)
        if res:
            progress.complete_task(t)
            sys.exit(0)
        time.sleep(1)
        after = datetime.datetime.now()
        delta = (after - before).total_seconds()
        progress.update(t, completed=int(delta))
    progress.complete_task_nok(t)
    sys.exit(1)
