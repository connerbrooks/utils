# utils - cbrooks utility applications

.POSIX:

include config.mk

UTILS = redshift-ca plumb

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	for target in $(UTILS); do \
		cp -f $$target $(DESTDIR)$(PREFIX)/bin ; \
		chmod 755 $(DESTDIR)$(PREFIX)/bin/$$target ; \
	done

uninstall:
	for target in $(UTILS); do \
		rm -f $(DESTDIR)$(PREFIX)/bin/$$target ; \
	done

.PHONY install uninstall
