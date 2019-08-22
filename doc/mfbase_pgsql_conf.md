.. index:: PostgreSQL configuration
# PostgreSQL configuration 

## PostgreSQL configuration files 

By default, the PostgreSQL configuration files are stored in the `/home/mfbase/var/pgsql` directory.

You may change this location in the `[postgresql]` section of the`/home/mfbase/config/config.ini` file:
```cfg
{% raw %}
[postgresql]
# data_dir={{MODULE_RUNTIME_HOME}}/var/pgsql
{% endraw %}
```

.. caution::
	When you run the :ref:`mfbase.init<mfbase_manage:init>` command, the PostgreSQL configuration is reset to the default configuration.

.. seealso::
	| `PostgreSQL Database File Layout documentation <https://www.postgresql.org/docs/current/storage-file-layout.html>`_
    | `PostgreSQL Client Authentication <https://www.postgresql.org/docs/current/client-authentication.html>`_
    | `PostgreSQL Server Configuration <https://www.postgresql.org/docs/current/runtime-config.html>`_

## Metwork PostgreSQL template database

`metwork` :index:`Postgresql database template` is the default for creating new databases. This template name is defined in the `[postgresql] `section `/home/mfbase/config/config.ini` file and may be changed:
```cfg
[postgresql]
# dbname=metwork

```

## Metwork PostgreSQL administrative account

The default MFBASE :index:`administrative account` (`metwork/metwork`) is defined in the `[postgresql] `section `/home/mfbase/config/config.ini` file and may be changed:
```cfg
[postgresql]
# administrative account
# username=metwork
# password=metwork

```

## Metwork PostgreSQL default `locale`

The default MFBASE :index:`locale` is `C` which means the system behaves as if it had no locale support. This setting is defined in the `[postgresql] `section `/home/mfbase/config/config.ini` file and may be changed:
```cfg
[postgresql]
# locale=C

```
.. seealso::
	| `PostgreSQL Locale Support documentation <https://www.postgresql.org/docs/current/locale.html>`_

## Metwork PostgreSQL default `port`

The default MFBASE :index:`port` is `7432` and is defined in the `[postgresql] `section `/home/mfbase/config/config.ini` file and may be changed:
```cfg
[postgresql]
# port=7432

```

.. index:: logs, logging
## Metwork PostgreSQL Logging

Refer to :ref:`mfbase_log:PostgreSQL logs files` 

<!--
Intentional comment to prevent m2r from generating bad rst statements when the file ends with a block .. xxx ::
-->
