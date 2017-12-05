SCRIPT_FILE=start-eta-keyboard-on-login
XSTARTUP_SCRIPT=Xstartup
XSETUP_SCRIPT=Xsetup
IMAGES=$(wildcard *.png *.jpg)
BACKGROUND_CONFIG=backgroundrc
KDM_CONFIG=kdmrc

all:

clean:

install: 
	mkdir -p $(DESTDIR)/usr/share/eta/eta-keyboard-kdm-config
	install -m 0755 $(XSTARTUP_SCRIPT) $(DESTDIR)/usr/share/eta/eta-keyboard-kdm-config
	install -m 0755 $(XSETUP_SCRIPT) $(DESTDIR)/usr/share/eta/eta-keyboard-kdm-config
	install -m 0755 $(SCRIPT_FILE) $(DESTDIR)/usr/share/eta/eta-keyboard-kdm-config
	install -m 0644 $(BACKGROUND_CONFIG) $(DESTDIR)/usr/share/eta/eta-keyboard-kdm-config
	install -m 0644 $(IMAGES) $(DESTDIR)/usr/share/eta/eta-keyboard-kdm-config
	install -m 0644 $(KDM_CONFIG) $(DESTDIR)/usr/share/eta/eta-keyboard-kdm-config
	mkdir -p $(DESTDIR)/usr/bin
	cd $(DESTDIR)/usr/bin && ln -s /usr/share/eta/eta-keyboard-kdm-config/$(SCRIPT_FILE) preloadkde
