# release_1.0 CHANGELOG

## v1.0.3 (2021-01-26)

- No interesting change

## v1.0.2 (2021-01-21)

### Bug Fixes

- fix base alias inside a plugin_env (thanks to jmdamas) (bp #171) (#172)

## v1.0.1 (2020-11-03)

### New Features

- add a configuration option to open the endpoint /uuid to other networks (bp #136) (#138)

### Bug Fixes

- fix uninstall plugin when user and db don't exist (at db level) (bp #151) (#153)

## v1.0.0 (2020-09-19)

### New Features

- adaptation to removal of layer misc@mfext
- log refactoring
- remove absolute log paths from log_proxy usages (LOGPROXY_LOG_DIRECTORY env variable is used by default)
- add possibility to create extension plpython3u (not created by default)
- add possibility to create extension plpython3u (not created by default)
- add http auth and ip filtering for storage plugins
- dav_methods are now configurable by plugin
- remove all references to MFCOM or mfcom, including backward compatibility stuff
- new plugin system
- remove layer python3@mfbase (psycopg2 is now provided by layer python3_scientific_core@mfext)

### Bug Fixes

- fix about plugin name with uppercases characters


