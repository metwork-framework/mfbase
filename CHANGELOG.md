# release_1.0 CHANGELOG


## [Unreleased]

### New Features
- add a configuration option to open the endpoint /uuid to other networks (bp #136) (#138)






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





