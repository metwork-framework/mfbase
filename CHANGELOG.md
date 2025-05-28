# release_2.3 CHANGELOG

## [Unreleased]

### Bug Fixes

- fix mfbase.start with postgresql disabled (backport #308) (#310)

## v2.3.0 (2025-05-13)

### New Features

- handle autoindex format (#261)
- customize max_connections
- customize max_connections (#276)
- add iniscripts, make and crontab as dependencies (#293)
- create extension pg_uuidv7 (#302)

### Bug Fixes

- error during mfbase.init if postgresql data_dir modified (#255)
- .gitignore missing for new mfbase plugins (#257) (#258)
- configurations _use_postgresql and _use_storage are ignored (#262)
- major issue with public schema (#252) (#264)
- configuration _use_storage ignored (#262 bis)
- max_connections in postgresql.conf should be configurable (fix) (closes #275)
- create schema error using scripts (#296)
- add a script for fixing schema (public) of plugin's objects (#252)
- remove useless comment
- fix to make _fix_plugin_schema.py available in rpms (#304)


