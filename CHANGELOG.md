# release_0.9 CHANGELOG

## v0.9.9 (2020-11-03)

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

## v0.9.8 (2020-10-09)

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

## v0.9.7 (2020-09-25)

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

## v0.9.6 (2020-01-27)

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

## v0.9.4 (2020-01-13)

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

## v0.9.5 (2020-01-13)

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

## v0.9.3 (2019-11-05)

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

## v0.9.2 (2019-10-24)

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

## v0.9.1 (2019-10-23)

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

## v0.9.0 (2019-10-22)

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


