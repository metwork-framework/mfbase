
# Miscellaneous

.. index:: layerapi2, layerapi2_dependencies, .layerapi2_dependencies, dependencies
## The `.layerapi2_dependencies` file

When you create a plugin with the :ref:`bootstap_plugin <mfbase_quick_start:Creating your first plugin with PostgreSQL Database support>` command, a `.layerapi2_dependencies` file is created in the plugin root directory. This file contains the module/package dependencies you need for the plugin.

By default, the `.layerapi2_dependencies` file contains only minimal dependencies, e.g.:
```cfg
python3@mfbase
```
means the plugin will use Python3 from the python3 package supplied in MFBASE.

For more details on `layerapi2`, check :doc:`MFEXT layerapi2 <mfext:layerapi2>` and :ref:`MFEXT layerapi2 syntax <mfext:layerapi2_syntax>` documentation.

.. index:: layerapi2, layerapi2_extra_env, .layerapi2_extra_env
## The `.layerapi2_extra_env` file

The `.layerapi2_extra_env` file allows you to defined environment variable only in the plugin context. Check `layerapi2` MFEXT documentation.

By default, this `.layerapi2_extra_env` doesn't exist. If you need to add extra environment variables, create this file in the plugin root directory.

.. seealso::
    :ref:`MFEXT layerapi2 syntax <mfext:layerapi2_syntax>` documentation.

.. index:: outside command
.. _outside_metwork_command:

## The `outside` Metwork command

The `outside` is a command utility that allow you execute commands outside the Metwork environment.

For instance, let's assume the Python version of Metwork is 3.5.6 and the Python version installed on your system is Python 2.7.5.

For instance:

- Entering the command from the Metwork environment:

```bash
python --version
```
```
Python 3.5.6
```

- Entering the command from the Metwork environment:

```bash
outside python --version
```
```
Python 2.7.5
```
.. index:: crontab support
.. _mfbase_crontab_support:
## The `crontab` support

Each plugin has a `crontab` support to schedule the execution of programs.

In order to enable your plugin `crontab`, just create a `crontab` file in the root directory of the plugin and set the tasks you want to schedule. For further details about `crontab`, check the Linux documentation (`man crontab` command or http://man7.org/linux/man-pages/man5/crontab.5.html)

In order to (re)load the contab file:
- If the crontab file does not exist and you create it, you have to restart MFBASE by entering `mfbase.stop` then `mfbase.start` commands (or reinstall the plugin)
- If the crontab file exists and you just change its content, you have just to wait a few seconds for the changes to be automatically taken into account.

.. tip::
    - you may use environment variable in your command surrounded with {% raw %}{{ }} {% endraw %}. Environment variables are substituted when cron is installed
    - you may use the wrapper `cronwrap.sh` in order to execute the command in the Metwork context.

.. warning::
	- Never use `crontab -e` to edit the crontab file inline.
	- Never override the crontab file by entering the command `crontab [your_crontab_file]`


If you need to execute your `cron` command in the Metwork context, you should use the cron wrapper script `${MFBASE_HOME}/bin/cronwrap.sh`, e.g. :
```cfg
{% raw %}
{{MFBASE_HOME}}/bin/cronwrap.sh --lock --low "find {{MFMODULE_RUNTIME_HOME}}/var/archive/ -type f -mtime +5 -exec rm -f {} \;" >/dev/null 2>&1

{{MFBASE_HOME}}/bin/cronwrap.sh -- plugin_wrapper [your_plugin_name]  [your_sh_command] --log-capture-to [your_log_filename] 2>&1
{% endraw %}
```

Enter `cronwrap.sh --help` for more details.

<!--
Intentional comment to prevent m2r from generating bad rst statements when the file ends with a block .. xxx ::
-->

