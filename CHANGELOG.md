# release_1.0 CHANGELOG


## [Unreleased]

### New Features
- remove layer python3@mfbase (psycopg2 is now provided by layer python3_scientific_core@mfext)
- new plugin system
- remove all references to MFCOM or mfcom, including backward compatibility stuff
- dav_methods are now configurable by plugin
- add http auth and ip filtering for storage plugins
- add possibility to create extension plpython3u (not created by default)
- add possibility to create extension plpython3u (not created by default)
- remove absolute log paths from log_proxy usages (LOGPROXY_LOG_DIRECTORY env variable is used by default)
- log refactoring
- adaptation to removal of layer misc@mfext


### Bug Fixes
- fix about plugin name with uppercases characters





