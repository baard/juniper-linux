DESTDIR =
PREFIX = /usr/local
DOCS = $(DESTDIR)$(PREFIX)/share/doc/juniper
INSTALL = install
INSTALL_DATA = install -m644

nothing:

install:
	$(INSTALL) ncsvc $(DESTDIR)$(PREFIX)/bin
	$(INSTALL) juniper $(DESTDIR)/etc/init.d/juniper
	$(INSTALL_DATA) juniper.conf.sample $(DOCS)
	$(INSTALL_DATA) ssl.bouvet.no.der $(DOCS)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/ncsvc
	rm -f $(DESTDIR)/etc/init.d/juniper
	rm -f $(DOCS)/juniper.conf.sample
	rm -f $(DOCS)/ssl.bouvet.no.der
	rmdir --ignore-fail-on-non-empty $(DOCS)
