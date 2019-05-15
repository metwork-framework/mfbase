# CHANGELOG


## [Unreleased]

### New Features
- add postgresql dump/restore commands for plugins
- monitor postgresql with telegraf
- don't use plugin dir as plugin names


### Bug Fixes
- the spatial_ref_sys table is not owned by plugin user
- better postgresql status during startup (on slow systems)
- fix building issues with proxy
- fix typo
- fix bug CHANGELOGS not generated when CHANGELOGS.md doesn't exist (for the first time)





## v0.6.0 (2019-04-01)

### New Features
- mfbase depends now on scientific_core@mfext layer






