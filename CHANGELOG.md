# release_2.2 CHANGELOG

## [Unreleased]

### Bug Fixes

- .gitignore missing for new mfbase plugins (#257) (#258)

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


