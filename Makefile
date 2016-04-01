DESTDIR =
PREFIX = /usr/local
DOCS = $(DESTDIR)$(PREFIX)/share/doc/juniper
INSTALL = install
INSTALL_DATA = install -m644

nothing:

install:
	$(INSTALL) pulsesvc $(DESTDIR)$(PREFIX)/bin
	$(INSTALL) juniper $(DESTDIR)/etc/init.d/juniper
	$(INSTALL) juniper.default $(DESTDIR)/etc/default/juniper
	$(INSTALL_DATA) juniper.conf.sample $(DOCS)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/pulsesvc
	rm -f $(DESTDIR)/etc/init.d/juniper
	rm -f $(DESTDIR)/etc/default/juniper
	rm -f $(DOCS)/juniper.conf.sample
	rmdir --ignore-fail-on-non-empty $(DOCS)
