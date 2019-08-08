BINS=_wait_postgresql.py before_start_postgresql _plugins.postinstall _plugins.preuninstall plugins.pgrestore.sh plugins.pgdump.sh _fix_plugin_owner.py _create_plugin_database.sh before_start_nginx _make_nginx_conf __make_nginx_conf mfbase_conf_monitor.py
SHARES=sqltools.sh

include root.mk
include $(MFEXT_HOME)/share/subdir_root.mk
include $(MFCOM_HOME)/share/startup_scripts_profiles.mk

TEMPLATES=$(shell find templates ! -type d)
TARGET_TEMPLATES:=$(addprefix $(PREFIX)/share/,$(TEMPLATES))

all:: profiles $(PREFIX)/bin/cronwrap.sh $(PREFIX)/bin/mfbase.status $(PREFIX)/bin/mfbase.start $(PREFIX)/bin/mfbase.stop $(PREFIX)/bin/mfbase.init load_env $(TARGET_TEMPLATES) $(PREFIX)/share/welcome/index.html

$(PREFIX)/share/welcome/index.html: welcome/index.html
	rm -Rf $(PREFIX)/share/welcome
	mkdir -p $(PREFIX)/share/welcome
	cp -Rf welcome/* $(PREFIX)/share/welcome/
