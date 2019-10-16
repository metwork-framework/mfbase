MFMODULE=MFBASE
MFMODULE_LOWERCASE=mfbase

-include adm/root.mk
-include $(MFEXT_HOME)/share/main_root.mk

all:: directories
	cd adm && $(MAKE)
	cd config && $(MAKE)
	cd layers && $(MAKE)

clean::
	cd config && $(MAKE) clean
	cd adm && $(MAKE) clean
	cd layers && $(MAKE) clean

directories:
	@for DIR in config bin; do mkdir -p $(MFBASE_HOME)/$$DIR; done
