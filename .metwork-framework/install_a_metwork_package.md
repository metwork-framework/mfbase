# How to install/upgrade/remove mfbase metwork package (with internet access)

[//]: # (automatically generated from https://github.com/metwork-framework/resources/blob/master/cookiecutter/_%7B%7Bcookiecutter.repo%7D%7D/.metwork-framework/install_a_metwork_package.md)

## Prerequisites

You must:

- have configured the metwork yum repository. Please see [the corresponding document](configure_metwork_repo.md) document to do that.
- have an internet access on this computer

## Install mfbase metwork package

## Full installation

You just have to execute the following command (as `root` user):

```
yum install metwork-mfbase
```

## Minimal installation

If you prefer to start with a minimal installation, you have to execute the following command
(as `root` user):

```
yum install metwork-mfbase-minimal
```

## Addons

### Dependencies addons

```
# To install some devtools
yum install metwork-mfext-devtools

# To install some scientific libraries
yum install metwork-mfext-scientific

# To install python2 support
# (including corresponding scientific and devtools addons)
yum install metwork-mfext-python2
```





## Services

You can start corresponding services with the root command:

```
service metwork start
```

Or you can also reboot your computer (because metwork services are started automatically on boot).



## Uninstall mfbase metwork package


To uninstall mfbase metwork package, please stop corresponding metwork services with the `root` command:

```
service metwork stop mfbase
```

Then, use the following command (still as `root` user):


```
yum remove "metwork-mfbase*"
```

## Upgrade mfbase metwork package

To upgrade mfbase metwork package, use the following commands (still as `root` user):


```
# We stop mfbase services
service metwork stop mfbase
```


```
# We upgrade mfbase metwork package
yum upgrade "metwork-mfbase*"
```


```
# We start mfbase services
service metwork start mfbase
```


## Uninstall all metwork packages

To uninstall all metwork packages, use following root commands:

```
# We stop metwork services
service metwork stop

# we remove metwork packages
yum remove "metwork-*"
```

## Upgrade all metwork packages

The same idea applies to upgrade.

For example, to upgrade all metwork packages on a computer, use following root commands:

```
# We stop metwork services
service metwork stop

# We upgrade metwork packages
yum upgrade "metwork-*"

# We start metwork services
service metwork start
```
