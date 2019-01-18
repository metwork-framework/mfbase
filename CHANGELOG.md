<a name="unreleased"></a>
## [Unreleased]

### Feat
- Changes in management of layer dependencies and metapackage names (only minimal and full) Associated with changes in mfext _metwork.spec, this reduces the number of layers installed by default when installing mfbase (only necessary mfext layers are installed) Metapackage metwork-mfbase-minimal only installs the necessary layers for mfbase to work properly Metapackage metwork-mfbase or metwork-mfbase-full installs all mfbase layers

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

