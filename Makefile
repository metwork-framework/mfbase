MODULE=MFBASE
MODULE_LOWERCASE=mfbase

-include adm/root.mk
-include $(MFEXT_HOME)/share/main_root.mk

all:: directories
	echo "root@mfcom" >$(MFBASE_HOME)/.layerapi2_dependencies
	echo "scientific@mfext" >>$(MFBASE_HOME)/.layerapi2_dependencies
	cd adm && $(MAKE)
	cd config && $(MAKE)
	cd layers && $(MAKE)

clean::
	cd config && $(MAKE) clean
	cd adm && $(MAKE) clean
	cd layers && $(MAKE) clean

directories:
	@for DIR in config bin; do mkdir -p $(PREFIX)/$$DIR; done
