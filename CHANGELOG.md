<a name="unreleased"></a>
## [Unreleased]

<a name="v0.5.5"></a>
## [v0.5.5] - 2019-02-09

<a name="v0.5.4"></a>
## [v0.5.4] - 2019-02-06

<a name="v0.5.3"></a>
## [v0.5.3] - 2019-01-31

<a name="v0.5.2"></a>
## [v0.5.2] - 2019-01-31

<a name="v0.5.1"></a>
## [v0.5.1] - 2019-01-29

<a name="v0.5.0"></a>
## [v0.5.0] - 2019-01-29
### Feat
- Changes in management of layer dependencies and metapackage names (only minimal and full) Associated with changes in mfext _metwork.spec, this reduces the number of layers installed by default when installing mfbase (only necessary mfext layers are installed) Metapackage metwork-mfbase-minimal only installs the necessary layers for mfbase to work properly Metapackage metwork-mfbase or metwork-mfbase-full installs all mfbase layers
- execute integration tests directly from mfbase module and lauch them on a pull request on the module

<a name="v0.4.1"></a>
## [v0.4.1] - 2019-01-09

<a name="v0.4.0"></a>
## [v0.4.0] - 2019-01-08
### Feat
- better batch_psql function
- change default configuration

### Fix
- add postgresql extensions on plugin database creation
- drop the plugin database even if a user is connected
- fail if there are some problems

### BREAKING CHANGE

no admin module configured by default

