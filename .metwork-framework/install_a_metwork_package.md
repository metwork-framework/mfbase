# How to install/upgrade/remove mfbase metwork module (with internet access)

[//]: # (automatically generated from https://github.com/metwork-framework/resources/blob/master/cookiecutter/_%7B%7Bcookiecutter.repo%7D%7D/.metwork-framework/install_a_metwork_package.md)

## Prerequisites

You must:

- have configured the metwork yum repository. Please see [the corresponding document](configure_metwork_repo.md) document to do that.
- have an internet access on this computer

## Install mfbase metwork module

## Full installation

You just have to execute the following command (as `root` user):

```bash
yum install metwork-mfbase
```

## Minimal installation

If you prefer to start with a minimal installation, you have to execute the following command
(as `root` user):

```bash
yum install metwork-mfbase-minimal
```

## Optional Addons

### Optional dependencies addons

```bash
# To install some devtools
yum install metwork-mfext-layer-devtools
yum install metwork-mfext-layer-python3_devtools
yum install metwork-mfext-layer-python3_devtools_jupyter

# To install some scientific libraries
yum install metwork-mfext-layer-scientific
yum install metwork-mfext-layer-python3_scientific

# To install python2 support
# (including corresponding scientific and devtools addons)
yum install metwork-mfext-python2
yum install metwork-mfext-python2_scientific
yum install metwork-mfext-python2_devtools
```





## Services

You can start corresponding services with the root command:

```bash
service metwork start
```

Or you can also reboot your computer (because metwork services are started automatically on boot).



## Uninstall mfbase metwork module


To uninstall mfbase metwork module, please stop corresponding metwork services with the `root` command:

```bash
service metwork stop mfbase
```

Then, use the following command (still as `root` user):


```bash
yum remove "metwork-mfbase*"
```

## Upgrade mfbase metwork module

To upgrade mfbase metwork module, use the following commands (still as `root` user):


```bash
# We stop mfbase services
service metwork stop mfbase
```


```bash
# We upgrade mfbase metwork module
yum upgrade "metwork-mfbase*"
```


```bash
# We start mfbase services
service metwork start mfbase
```


## Uninstall all metwork modules

To uninstall all metwork modules, use following root commands:

```bash
# We stop metwork services
service metwork stop

# we remove metwork modules
yum remove "metwork-*"
```

## Upgrade all metwork modules

The same idea applies to upgrade.

For example, to upgrade all metwork modules on a computer, use following root commands:

```bash
# We stop metwork services
service metwork stop

# We upgrade metwork modules
yum upgrade "metwork-*"

# We start metwork services
service metwork start
```
