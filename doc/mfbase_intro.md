# Introduction to MFBASE


## What is mfbase?

MFBASE is the storage module of the Metwork framework. 

.. index:: SQL support, PostgreSQL, PostGIS
### SQL Database storage
MFBASE allows you to easily and quickly install a database.

Currently, Metwork supplies only [PostgreSQL](http://postgresql.org/) / [PostGIS](http://postgis.refractions.net/). You could check the current :index:`PostgreSQL/PostGIS version` :ref:`here <mfext:layer_scientific_core:packages>`

In the near future, some other :index:`database engine` will be available in Metwork.

If you make your first steps with MFBASE, we prompt you to check the :doc:`mfbase_quick_start` section to discover the MFBASE features.

.. index:: WebDAV support, Nginx
### WebDAV storage 
MFBASE also provides a [WEBDAV](https://en.wikipedia.org/wiki/WebDAV) storage powered by a [Nginx](https://www.nginx.com/) instance.

This feature can be a solution for BLOB storage if you don’t want to store them in PostgreSQL (for various reasons).

## Why would I use mfbase?

MFBASE is the efficient module, if you need:
-  a 'ready to use' database engine. When you create a PostgreSQL database from MFBASE, the most popular PostgreSQL and PostGIS extensions are installed and available.
-  a storage repository through the Web.

Of course, the same MFBASE plugin can handle both, Postgres database ad WebDAV repository at once.

## How it works?

![image](./_images/overall_architecture.svg)

- [Circus](https://circus.readthedocs.io/en/latest/) is a Python program in order to monitor and control processes and sockets.

- [Telegraf](https://docs.influxdata.com/telegraf/) is a plugin-driven server agent for collecting and sending metrics and events from databases, systems, and IoT sensors.

- [Nginx](https://www.nginx.com/) is intended for file management automation via the WebDAV protocol. It acts as a WebDAV repository.

- `mflog2mfadmin` (based on [jsonlog2elasticsearch](https://github.com/metwork-framework/jsonlog2elasticsearch)) is a daemon to send [mflog](https://github.com/metwork-framework/mflog) logs to elasticsearch.

Circus acts as a process watcher and runner. You may check the full `circus.ini` configuration file in the `/home/mfbase/tmp/config_auto/` directory. Check the [Circus architecture](https://circus.readthedocs.io/en/latest/design/architecture/)

:index:`Monitoring` and :index:`Dashboards` are available through :doc:`MFADMIN <mfadmin:mfadmin_monitoring_plugins>`.

.. seealso::
    | :doc:`MFADMIN Documentation <mfadmin:index>`
    | :doc:`mfadmin:mfadmin_monitoring_plugins`.
    | :ref:`mfadmin:mfadmin_miscellaneous:Circus hooks` 
    | :ref:`PostgreSQL storage plugin tutorial <mfbase_quick_start:Creating your first plugin with PostgreSQL Database support>` 
    | :ref:`WebDAV storage plugin tutorial <mfbase_quick_start:Creating your first plugin with WebDAV support>` 
    
<!--
Intentional comment to prevent m2r from generating bad rst statements when the file ends with a block .. xxx ::
-->