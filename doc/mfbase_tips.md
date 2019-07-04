
# Hints and tips

.. index:: base command, plugin_env
## Connect psql to your plugin database

In order to easily run the PostgreSQL interactive terminal :index:`psql` on your plugin database, from your MFBASE plugin directory, issue

- the :ref:`plugins_guide:\`\`plugin_env\`\`` command
- then the `base` command.

e.g. from the `foo` :ref:`MFBASE plugin <mfbase_quick_start:Creating your first plugin>`:

```bash
plugin_env

```

```
          __  __      ___          __        _
          |  \/  |    | \ \        / /       | |
          | \  / | ___| |\ \  /\  / /__  _ __| | __
          | |\/| |/ _ \ __\ \/  \/ / _ \| '__| |/ /
          | |  | |  __/ |_ \  /\  / (_) | |  |   <
          |_|  |_|\___|\__| \/  \/ \___/|_|  |_|\_\


Welcome on xxx (xxx, xx.xx.xx.x)
(module: MFBASE, version: xxxx)

 13:50:24 up 15 days, 21:31,  4 users,  load average: 0.47, 0.38, 0.27

```
```bash
base
```
```psql
psql (10.1)
Type "help" for help.

plugin_foo=>
```

Then you are able to type in queries interactively, issue them to PostgreSQL, and see the query results


.. note::
	If you enter the `base` command without first entering the `plugin_env` command, you will be connect to the :ref:`mfbase_pgsql_conf:metwork postgresql template database`.

.. index:: PostGIS, MapServer, MapServer APIs, Add-ons
## PostGIS and MapServer

If you want to make MapServer query calls to a PostGIS layer of your database, you should be interested in some [Metwork libraries and sets of tools close to Mapserver](https://github.com/metwork-framework?utf8=%E2%9C%93&q=mapserver*&type=&language=).

