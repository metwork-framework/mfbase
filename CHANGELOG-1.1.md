# release_1.1 CHANGELOG

## v1.1.1 (2021-07-30)

### Bug Fixes

- fix extra daemon for mfbase plugins (backport #186) (#188)
- fix nginx startup fix with send_nginx_logs=1 (backport #189) (#190)

## v1.1.0 (2021-05-01)

### New Features

- add a configuration option to open the endpoint /uuid to other … (#136)
- create extension unaccent (extension now available in mfext) (#145)

### Bug Fixes

- fix uninstall plugin when user and db don't exist (at db level) (#151)
- fix base alias inside a plugin_env (thanks to jmdamas) (#171)
- fix some stop/start issues (#174)


