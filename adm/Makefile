BINS=postgresql.status before_start_postgresql _plugins.postinstall _plugins.preuninstall plugins.pgrestore.sh plugins.pgdump.sh _fix_plugin_owner.py _fix_plugin_schema.py _create_plugin_database.sh before_start_nginx _make_nginx_conf __make_nginx_conf mfbase_conf_monitor.py _make_circus_conf
SHARES=sqltools.sh

include root.mk
include $(MFEXT_HOME)/share/subdir_root.mk
include $(MFEXT_HOME)/share/startup_scripts_profiles.mk

TEMPLATES=$(shell find templates ! -type d)
TARGET_TEMPLATES:=$(addprefix $(PREFIX)/share/,$(TEMPLATES))

all:: profiles $(PREFIX)/bin/cronwrap.sh $(PREFIX)/bin/mfbase.status $(PREFIX)/bin/mfbase.start $(PREFIX)/bin/mfbase.stop $(PREFIX)/bin/mfbase.init load_env $(TARGET_TEMPLATES) $(PREFIX)/share/welcome/index.html $(PREFIX)/lib/mfbase/__init__.py $(PREFIX)/lib/mfbase/plugins.py

$(PREFIX)/share/welcome/index.html: welcome/index.html
	rm -Rf $(PREFIX)/share/welcome
	mkdir -p $(PREFIX)/share/welcome
	cp -Rf welcome/* $(PREFIX)/share/welcome/

$(PREFIX)/lib/mfbase/__init__.py:
	mkdir -p $(PREFIX)/lib/mfbase
	touch $@

$(PREFIX)/lib/mfbase/plugins.py: plugins.py
	cp -f $< $@
