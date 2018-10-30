# mfbase

[//]: # (automatically generated from https://github.com/metwork-framework/resources/blob/master/cookiecutter/%7B%7Bcookiecutter.repo%7D%7D/README.md)

## Status (master branch)
[![Drone CI](http://metwork-framework.org:8000/api/badges/metwork-framework/mfbase/status.svg)](http://metwork-framework.org:8000/metwork-framework/mfbase)
[![Maintenance](https://github.com/metwork-framework/resources/blob/master/badges/maintained.svg)]()
[![License](https://github.com/metwork-framework/resources/blob/master/badges/bsd.svg)]()

## What is it ?

This is the storage module of the metwork framework.

## Quickstart

### Prerequisites

- `mfbase` module installed (see [documentation](https://github.com/metwork-framework/resources/blob/master/documents/install_a_metwork_package.md))

When `mfbase` is installed, the command `ls /opt |grep mfbase` must return something.

### `mfbase` user

The following is done as `mfbase` user (there is no default password, change it
with `passwd mfbase` command as `root` user if you want or use `su - mfbase` from `root`
to log in as `mfbase` user.

When you are in `mfbase` user, you must see a MetWork welcome screen on your terminal like:

```
           __  __      ___          __        _
          |  \/  |    | \ \        / /       | |
          | \  / | ___| |\ \  /\  / /__  _ __| | __
          | |\/| |/ _ \ __\ \/  \/ / _ \| '__| |/ /
          | |  | |  __/ |_ \  /\  / (_) | |  |   <
          |_|  |_|\___|\__| \/  \/ \___/|_|  |_|\_\


Welcome on xxxx (xxxxx.meteo.fr, 192.168.1.170)
(module: MFBASE, version: integration.14.3d17536)

 14:28:51 up 18 days,  2:49,  1 user,  load average: 0.16, 0.21, 0.23


```

When you see that in your terminal, you can continue.

## Creating your first plugin

Use the command `bootstrap_plugin.py create foo` to bootstrap a plugin named `foo`.

After answering the questions, you have a `foo` directory in your current directory.

These are the sources of your newly created plugin. Go inside with `cd foo`.

## Releasing your first plugin

Use the command `make release` inside your `foo` directory. You get a `.plugin` file in
the `foo` directory.

## Installing your first plugin

Use the command `plugins.install [...].plugin` to install your plugin.

This will create:

- a `plugin_foo` postgresql database
- a `plugin_foo` postgresql username (with full rights on `plugin_foo` database)
- a default password: `plugin_foo` for `plugin_foo` username

## Testing your database

As the default port for the `mfbase` postgresql server is `7432`, you can connect
to your newly created database with this command:

```
psql -U plugin_foo -h localhost -p 7432 plugin_foo
# (use plugin_foo as password when prompted)
```

or by configuring your favorite `postgresql` client to:

```
hostname: your_mfbase_host
username: plugin_foo
password: plugin_foo
port: 7432
database: plugin_foo
```

## Reference

### Managing `mfbase` services (as `mfbase` user)

#### Start

With `mfbase.start` you start `mfbase` services. It's done automatically during machine start process.

The first time, an automatic initialization is done.

#### Stop

With `mfbase.stop`, you stop `mfbase` services. It's done automatically during machine shutdown process.

#### Status

With `mfbase.status`, you can check `mfbase` services. If you need to do that within a non-interactive code, please don't parse the output and use the return code (`$?` in shell). If the return code is `0`, everything is fine.

#### Init

With `mfbase.init`, you can reinit your module. **With this command, you will loose all your databases**.

Note: services are automatically stopped, so you have to start them again after this command.

### Managing `mfbase` plugins (as `mfbase` user)

#### List

`plugins.list`

#### Install

`plugins.install FULL_PATH_TO_PLUGIN_FILE`

#### Uninstall

`plugins.uninstall PLUGIN_NAME_WITHOUT_PATH_EXTENSION_OR_VERSION`


## Contributing guide

See [CONTRIBUTING.md](CONTRIBUTING.md) file.




## Code of Conduct

See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) file.



