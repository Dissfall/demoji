.POSIX:

PREFIX = /usr
MANPREFIX = $(PREFIX)/share/man

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f bin/demoji $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/demoji
	mkdir -p $(DESTDIR)$(PREFIX)/share/demoji
	cp -f emoji $(DESTDIR)$(PREFIX)/share/demoji

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/demoji
	rm -f $(DESTDIR)$(PREFIX)/share/demoji

.PHONY: install uninstall 
