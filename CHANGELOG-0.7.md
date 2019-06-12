# release_0.7 CHANGELOG


## [Unreleased]

### New Features


### Bug Fixes
- add missing send_mflog_logs option in configuration





## v0.7.0 (2019-05-28)

### New Features
- mfbase depends now on scientific_core@mfext layer
- add postgresql dump/restore commands for plugins
- monitor postgresql with telegraf
- don't use plugin dir as plugin names


### Bug Fixes
- the spatial_ref_sys table is not owned by plugin user
- better postgresql status during startup (on slow systems)
- fix building issues with proxy
- fix typo
- fix bug CHANGELOGS not generated when CHANGELOGS.md doesn't exist (for the first time)
- fix pgsql telegraf configuration
- fix plugins dump/restore





