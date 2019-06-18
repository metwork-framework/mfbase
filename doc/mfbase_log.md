.. index:: logs, logging
# MFBASE Log

## Default logs files
MFBASE produces logs files stored in the `log` directory of the MFBASE root directory.

Logs parameters as log retention, log level are configured in the `[log]` section of the `config/config.ini` file in the MFBASE root directory. Check this file for further details.

.. seealso::
    :ref:`mfadmin:mfadmin_miscellaneous:Exporting logs`

## PostgreSQL logs files

:index:`PostgreSQL logs` are stored in in the `log/psql` directory of the MFBASE root directory.

If you need to enable logging of all SQL statements executed by PostgreSQL, you have to change the `log_statement`  setting in the :doc:`mfbase_pgsql_conf`:

```cfg
#log_statement = 'none'                 # none, ddl, mod, all
```

Another way to change the configuration is to issue either SQL `ALTER SYSTEM` statement, or  SQL `set_config` function, with an PostgreSQL administrative account, e.g. :

```sql
ALTER SYSTEM SET log_statement = 'all';
```
```sql
SELECT set_config('log_statement', 'all', false);
```

When you change the PostgreSQL configuration, in any way, you must reload the configuration. You could use the following:
```bash
mfbase.stop
mfbase.start
```

.. seealso::
	| `PostgreSQL Error Reporting and Logging documentation <https://www.postgresql.org/docs/current/runtime-config-logging.html>`_
	| `PostgreSQL log_statement documentation <https://www.postgresql.org/docs/current/runtime-config-logging.html#GUC-LOG-STATEMENT>`_
    | `PostgreSQL ALTER SYSTEM documentation <https://www.postgresql.org/docs/10/sql-altersystem.html>`_
    | `PostgreSQL Configuration Settings Functions documentation <https://www.postgresql.org/docs/current/functions-admin.html#FUNCTIONS-ADMIN-SET>`_

<!--
Intentional comment to prevent m2r from generating bad rst statements when the file ends with a block .. xxx ::
-->