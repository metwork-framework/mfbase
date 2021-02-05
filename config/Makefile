CONFIGS=config.ini postgresql.conf mflog_override.conf nginx.conf

include ../adm/root.mk
include $(MFEXT_HOME)/share/subdir_root.mk
include $(MFEXT_HOME)/share/config_subdir.mk

all:: $(MFMODULE_HOME)/config/telegraf.conf $(MFMODULE_HOME)/config/circus.ini $(MFMODULE_HOME)/config/vector.toml
