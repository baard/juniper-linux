DESTDIR =
PREFIX = /usr/local
DOCS = $(DESTDIR)$(PREFIX)/share/doc/juniper

nothing:

install:
	cp ncsvc $(DESTDIR)$(PREFIX)/bin
	cp juniper $(DESTDIR)/etc/init.d/juniper
	mkdir -p $(DOCS)
	cp juniper.conf.sample $(DOCS)
	cp ssl.bouvet.no.der $(DOCS)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/ncsvc
	rm -f $(DESTDIR)/etc/init.d/juniper
	rm -f $(DOCS)/juniper.conf.sample
	rm -f $(DOCS)/ssl.bouvet.no.der
	rmdir --ignore-fail-on-non-empty $(DOCS)
