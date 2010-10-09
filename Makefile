DESTDIR =
DOCS = $(DESTDIR)/usr/local/share/doc/juniper

install:
	cp ncsvc $(DESTDIR)/usr/local/bin
	cp juniper $(DESTDIR)/etc/init.d/juniper
	mkdir -p $(DOCS)
	cp juniper.conf.sample $(DOCS)
	cp ssl.bouvet.no.der $(DOCS)

uninstall:
	rm -f $(DESTDIR)/usr/local/bin/ncsvc
	rm -f $(DESTDIR)/etc/init.d/juniper
	rm -f $(DOCS)/juniper.conf.sample
	rm -f $(DOCS)/ssl.bouvet.no.der
	rmdir --ignore-fail-on-non-empty $(DOCS)
