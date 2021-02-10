[![logo](https://raw.githubusercontent.com/metwork-framework/resources/master/logos/metwork-white-logo-small.png)](http://www.metwork-framework.org)
# mfbase

[//]: # (automatically generated from https://github.com/metwork-framework/github_organization_management/blob/master/common_files/README.md)

**Status (master branch)**



[![GitHub CI](https://github.com/metwork-framework/mfbase/workflows/CI/badge.svg?branch=master)](https://github.com/metwork-framework/mfbase/actions?query=workflow%3ACI&branch=master)
[![Maintenance](https://github.com/metwork-framework/resources/blob/master/badges/maintained.svg)]()
[![License](https://github.com/metwork-framework/resources/blob/master/badges/bsd.svg)]()
[![Gitter](https://github.com/metwork-framework/resources/blob/master/badges/community-en.svg)](https://gitter.im/metwork-framework/community-en?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Gitter](https://github.com/metwork-framework/resources/blob/master/badges/community-fr.svg)](https://gitter.im/metwork-framework/community-fr?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)



## What is MetWork FrameWork?

[MetWork Framework](https://metwork-framework.org) is an opensource system
for building and managing production grade applications or micro-services
(from development to operations).


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





## Cheatsheet

A cheatsheet for this module is available [here](https://metwork-framework.org/pub/metwork/continuous_integration/docs/master/mfbase/800-cheatsheet/)



## Reference documentation

- (for **master (development)** version), see [this dedicated site](http://metwork-framework.org/pub/metwork/continuous_integration/docs/master/mfbase/) for reference documentation.
- (for **latest released stable** version), see [this dedicated site](http://metwork-framework.org/pub/metwork/releases/docs/stable/mfbase/) for reference documentation.

For very specific use cases, you might be interested in
[reference documentation for integration branch](http://metwork-framework.org/pub/metwork/continuous_integration/docs/integration/mfbase/).

And if you are looking for an old released version, you can search [here](http://metwork-framework.org/pub/metwork/releases/docs/).




## Installation guide

See [this document](https://metwork-framework.org/pub/metwork/continuous_integration/docs/master/mfbase/100-installation_guide/).


## Configuration guide

See [this document](https://metwork-framework.org/pub/metwork/continuous_integration/docs/master/mfbase/300-configuration_guide/).



## Contributing guide

See [CONTRIBUTING.md](CONTRIBUTING.md) file.



## Code of Conduct

See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) file.



## Sponsors

*(If you are officially paid to work on MetWork Framework, please contact us to add your company logo here!)*

[![logo](https://raw.githubusercontent.com/metwork-framework/resources/master/sponsors/meteofrance-small.jpeg)](http://www.meteofrance.com)
