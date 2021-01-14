# release_0.7 CHANGELOG

## v0.7.1 (2019-06-12)

### New Features

- better batch_psql function
- Changes in management of layer dependencies and metapackage names
- execute integration tests directly from mfbase module
- mfbase depends now on scientific_core@mfext layer
- add postgresql dump/restore commands for plugins
- monitor postgresql with telegraf
- don't use plugin dir as plugin names
- use envtpl new option --reduce-multi-blank-lines
- introduce webdav support for mfbase plugins
- replace MODULE* environment variables names by MFMODULE* (MODULE_HOME becomes MFMODULE_HOME and so on)
- build mfbase without mfcom (mfcom layers are now included in mfext)
- add a configuration option to open the endpoint /uuid to other networks (bp #136) (#137)
- create extension unaccent (extension now available in mfext) (bp #145) (#146)

### Bug Fixes

- add postgresql extensions on plugin database creation
- fail if there are some problems
- drop the plugin database even if a user is connected
- the spatial_ref_sys table is not owned by plugin user
- better postgresql status during startup (on slow systems)
- fix building issues with proxy
- fix typo
- fix bug CHANGELOGS not generated when CHANGELOGS.md doesn't exist (for the first time)
- fix plugins dump/restore
- fix pgsql telegraf configuration
- add missing send_mflog_logs option in configuration
- fix about plugin name with uppercases characters
- fix uninstall plugin when user and db don't exist (at db level) (bp #151) (#152)

## v0.7.0 (2019-05-28)

### New Features

- better batch_psql function
- Changes in management of layer dependencies and metapackage names
- execute integration tests directly from mfbase module
- mfbase depends now on scientific_core@mfext layer
- add postgresql dump/restore commands for plugins
- monitor postgresql with telegraf
- don't use plugin dir as plugin names
- use envtpl new option --reduce-multi-blank-lines
- introduce webdav support for mfbase plugins
- replace MODULE* environment variables names by MFMODULE* (MODULE_HOME becomes MFMODULE_HOME and so on)
- build mfbase without mfcom (mfcom layers are now included in mfext)
- add a configuration option to open the endpoint /uuid to other networks (bp #136) (#137)
- create extension unaccent (extension now available in mfext) (bp #145) (#146)

### Bug Fixes

- add postgresql extensions on plugin database creation
- fail if there are some problems
- drop the plugin database even if a user is connected
- the spatial_ref_sys table is not owned by plugin user
- better postgresql status during startup (on slow systems)
- fix building issues with proxy
- fix typo
- fix bug CHANGELOGS not generated when CHANGELOGS.md doesn't exist (for the first time)
- fix plugins dump/restore
- fix pgsql telegraf configuration
- add missing send_mflog_logs option in configuration
- fix about plugin name with uppercases characters
- fix uninstall plugin when user and db don't exist (at db level) (bp #151) (#152)


