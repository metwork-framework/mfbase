# Loading MFBASE environment

## General

After MFBASE installation, all files are located in `/opt/metwork-mfbase-{BRANCH}` directory with probably a `/opt/metwork-mfbase => /opt/metwork-mfbase-{BRANCH}` symbolic link (depending on what you have installed). Have a look in the `/opt` directory.

Because `/opt` is not used by default on [standard Linux](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard), the installation shouldn't break anything.

Therefore, if you do nothing specific after the installation, you won't benefit
of MFBASE environment.

In order to work with MFBASE, you have to load/activate the "Metwork MFBASE environment". There are several ways to do that, described in the sections below.

In the following sections, we use `{MFBASE_HOME}` as the installation directory of the `mfbase` module.

.. _activate_mfbase_user:

## Activate MFBASE environment by logging in as mfbase user.

Once MFBASE is installed, a `mfbase` user and, therefore, a `/home/mfbase` directory are created.

Log in as the mfbase user:
```bash
su - mfbase
```

.. note::
	If it's the first time you log in as mfbase user, there is no default password. You have to either set a password before (`passwd mfbase` or `sudo passwd mfbase`), or or use `su - mfbase` from `root` to log in as `mfbase` user.

Then, the MFBASE environment is loaded/activated for the whole session of the `mfbase` user.

From now, you are able to work with your plugin(s) in this `/home/mfbase` directory.

## Activate MFBASE environment from any user.

You can activate the MFBASE environment from your own account.

**This way is a good one if you intend to share the same Metwork environment on the same Linux machine with other users.**

Load the `mfbase` environment for the whole shell session by entering:
```bash
# {MFBASE_HOME} is the root mfbase directory, e.g. /opt/metwork-mfbase
source {MFBASE_HOME}/share/interative_profile
```

Then, the MFBASE environment is loaded/activated for the whole session of your account. A `metwork/mfbase` directory is created in your home directory. From now, you are able to work with your plugin(s) in this `~/metwork/mfbase` directory.

.. caution::
	The `~/metwork/mfbase` directory has nothing to do with the `/home/mfbase` :ref:`directory <activate_mfbase_user>` and they don't share anything.

.. caution::
	Before sourcing `interactive_profile`, mfbase service must not be started, for instance, from a `mfbase` user session. Check from a `mfbase` user session mfbase is stopped : `mfbase.status`, `mfbase.stop`.


.. tip::
	If you are fed up of always entering the `source` command, you may create an `mfbase` alias in your `.bash_profile` file and use this `mfbase` alias when you want to quickly load the "MFBASE environment":
        `MFBASE_HOME=/opt/metwork-mfbase`

        `alias mfbase="source ${MFBASE_HOME}/share/interactive_profile"`

.. warning::
	We don't recommend to source directly `mfbase interactive_profile` in your `.bash_profile` if you are working with a full graphical interface because of possible side effects with desktop environment.


## Activate MFBASE for one command only from any user.

If you want to load the "MFBASE environment" for only one command and then return back to a standard running environment, you can use the specific wrapper `{MFBASE_HOME}/bin/mfbase_wrapper`:
```bash
##### mfbase_wrapper example #####

# where is the system python command ?
$ which python
/usr/bin/python
# => this is the standard/system python command (in /usr/bin)

# what is the version of the system python command ?
$ python --version
Python 2.7.5
# => this is a python2 version

# execute python through the wrapper
# (please replace {MFBASE_HOME} by the real mfbase home !)
$ {MFBASE_HOME}/bin/mfbase_wrapper which python
/opt/metwork-mfext-master/opt/python3_core/bin/python
# => this is the metwork python command included in this module

# what is the version of the mfbase python command ?
$ {MFBASE_HOME}/bin/mfbase_wrapper python --version
Python 3.5.6
# => this is a python3 version
```

For more details, enter `{MFBASE_HOME}/bin/mfbase_wrapper --help` command.

## Miscellaneous

You may also be interested in the `outside` Metwork command. Check the :ref:`related documentation <mfdata:outside_metwork_command>`.





