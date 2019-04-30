.. index:: Managing MFBASE, 
# Managing MFBASE

.. seealso ::
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

.. index:: mfbase plugins management

## Managing `mfbase` plugins (as `mfbase` user)

Check :ref:`plugins_guide:Plugins commands` documentation in order to manage `mfbase` plugins.

.. index:: make commands, make develop, make clean, make superclean, make
## Make commands

This section is a complement to the general section :ref:`plugins_guide:Make commands`. 

The following commands described in this :ref:`plugins_guide:Make commands` are not available or do not make sense for the MFBASE module:

- make develop
- make clean
- make superclean
- make