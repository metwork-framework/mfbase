.. index:: Managing MFBASE, 
# Managing MFBASE

.. seealso::
    :doc:`plugins_guide` documentation.
    
.. index:: mfbase services

## Managing `mfbase` services (as `mfbase` user)

### Command commands and utilities

Check the common :ref:`utilities<layer_root:utilities>` in order to manage `mfbase` services.

.. index:: mfbase.init

### Init

With `mfbase.init`, you can reinit your module. 

.. caution:: 
    | **You must use this command with caution. This command removes ALL the databases store on the PostgreSQL server and resets the PostgreSQL configuration to the default configuration.** 
    | This command is executed without any confirmation.

.. Note::
    When executing this command, services are automatically stopped, so you have to start them again after this command is executed.

.. seealso::
    | `Dump database`_ section.
    | `Restore database`_ section.

.. index:: mfbase plugins management

## Managing `mfbase` plugins (as `mfbase` user)

Check :ref:`plugins_guide:Plugins commands` documentation in order to manage `mfbase` plugins.

.. index:: make commands, make develop, make clean, make superclean, make
## Make commands

Check :ref:`plugins_guide:Make commands`. 

The following commands described in this :ref:`plugins_guide:Make commands` are not available or do not make sense for the MFBASE module with **PostgreSQL** storage plugin:

- make develop
- make clean
- make superclean
- make

The following commands described in this :ref:`plugins_guide:Make commands` are not available or do not make sense for the MFBASE module with **WebDAV** storage plugin:

- make clean
- make superclean
- make


.. index:: dump database, plugins.pgdump.sh
## Dump database

In order to save/dump your database, you may issue the following command from the root MFBASE directory:
```bash
plugins.pgdump.sh {your_plugin_name} > {path_to_your_dump_file.sql}
```

e.g., if the plugin name is `foo`:

```bash
plugins.pgdump.sh foo > /tmp/foo_dump.sql
```

.. note::
    Begin the output with a command to create the database itself and reconnect to the created database. (With a script of this form, it doesn't matter which database in the destination installation you connect to before running the script).

.. seealso::
    | `Restore database`_ section.
    | `PostgreSQL pg_dump documentation <https://www.postgresql.org/docs/current/app-pgdump.html>`_


.. index:: restore database, plugins.pgrestore.sh
## Restore database
In order to restore your database, you may issue the following command from the root MFBASE directory:
```bash
plugins.pgrestore.sh {your_plugin_name} > {path_to_your_restore_file.sql}
```

e.g., if the plugin name is `foo`:

```bash
plugins.pgrestore.sh foo  /tmp/foo_dump.sql
```

.. caution::
    If the database exists, it will be dropped before restoring it.

.. seealso::
    | `Dump database`_ section.
    | `PostgreSQL pg_restore documentation <https://www.postgresql.org/docs/current/app-pgrestore.html>`_

<!--
Intentional comment to prevent m2r from generating bad rst statements when the file ends with a block .. xxx ::
-->