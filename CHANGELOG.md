# CHANGELOG


## [Unreleased]

### New Features
- don't use plugin dir as plugin names
- monitor postgresql with telegraf
- add postgresql dump/restore commands for plugins
- mfbase depends now on scientific_core@mfext layer


### Bug Fixes
- fix pgsql telegraf configuration
- fix plugins dump/restore
- fix bug CHANGELOGS not generated when CHANGELOGS.md doesn't exist (for the first time)
- fix typo
- fix building issues with proxy
- better postgresql status during startup (on slow systems)
- the spatial_ref_sys table is not owned by plugin user





