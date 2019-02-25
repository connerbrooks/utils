# utils - cbrooks utility applications

.POSIX:

include config.mk

UTILS = redshift-ca plumb screengrab

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	for target in $(UTILS); do \
		cp -f $$target $(DESTDIR)$(PREFIX)/bin ; \
		chmod 755 $(DESTDIR)$(PREFIX)/bin/$$target ; \
	done

	cp plumb.1 $(DESTDIR)$(MANPREFIX)/man1
	chmod 664 $(DESTDIR)$(MANPREFIX)/man1/plumb.1

uninstall:
	for target in $(UTILS); do \
		rm -f $(DESTDIR)$(PREFIX)/bin/$$target ; \
	done

