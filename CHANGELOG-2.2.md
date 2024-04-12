# release_2.2 CHANGELOG

## v2.2.6 (2024-03-21)

### Bug Fixes

- max_connections in postgresql.conf should be configurable (fix) (closes #275)

## v2.2.5 (2024-03-14)

### Bug Fixes

- configuration _use_storage ignored (#262 bis)

## v2.2.4 (2024-03-07)

- No interesting change

## v2.2.3 (2024-03-06)

### New Features

- customize max_connections (#276)

## v2.2.2 (2024-02-26)

### New Features

- handle autoindex format (backport #261) (#273)

### Bug Fixes

- .gitignore missing for new mfbase plugins (#257) (#258)
- configurations _use_postgresql and _use_storage are ignored (#262) (backport #263) (#266)
- major issue with public schema (#252) (#264)

## v2.2.1 (2023-12-15)

### Bug Fixes

- error during mfbase.init if postgresql data_dir modified (backport #255) (#256)

## v2.2.0 (2023-11-28)

### New Features

- add possibility to choose permissions on webdav created files
- upgrade jquery from 3.3.1 to 3.5.1 (security update) (#241)

### Bug Fixes

- fix possibility to change plugin release (#214)
- run plugin postinstall script if present (#233)
- fix .releaseignore to ignore .git folder when releasing plugins (#239)
- rename .release_ignore file to .releaseignore (closes #249) (#250)


