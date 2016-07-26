EXTRA_DIST = \
	LICENSE.CC \
	LICENSE.GPL \
	README.md

themedir = $(datadir)/themes/Greybird

install-data-hook:
	$(MKDIR_P)				$(DESTDIR)$(themedir)
	cp -r $(srcdir)/gtk-*			$(DESTDIR)$(themedir)
	cp -r $(srcdir)/metacity-1		$(DESTDIR)$(themedir)
	cp -r $(srcdir)/unity			$(DESTDIR)$(themedir)
	cp -r $(srcdir)/xfce-notify-4.0		$(DESTDIR)$(themedir)
	cp -r $(srcdir)/xfwm4			$(DESTDIR)$(themedir)
	cp    $(srcdir)/index.theme		$(DESTDIR)$(themedir)
	cp    $(srcdir)/ubiquity-panel-bg.png	$(DESTDIR)$(themedir)
	cp    $(srcdir)/Greybird.emerald	$(DESTDIR)$(themedir)
	$(MKDIR_P)				$(DESTDIR)$(datadir)/themes/Greybird-bright/xfce-notify-4.0
	$(MKDIR_P)				$(DESTDIR)$(datadir)/themes/Greybird-accessibility/xfwm4
	$(MKDIR_P)				$(DESTDIR)$(datadir)/themes/Greybird-compact/xfwm4
	cp -r $(srcdir)/xfce-notify-4.0_bright/* $(DESTDIR)$(datadir)/themes/Greybird-bright/xfce-notify-4.0
	cp -r $(srcdir)/xfwm4-a11y/*		$(DESTDIR)$(datadir)/themes/Greybird-accessibility/xfwm4
	cp -r $(srcdir)/xfwm4-compact/*		$(DESTDIR)$(datadir)/themes/Greybird-compact/xfwm4

uninstall-hook:
	test -e $(DESTDIR)$(themedir) && rm -rfv $(DESTDIR)$(themedir)
	test -e $(DESTDIR)$(datadir)/themes/Greybird-accessibility && rm -rfv $(DESTDIR)$(datadir)/themes/Greybird-accessibility
	test -e $(DESTDIR)$(datadir)/themes/Greybird-bright && rm -rfv $(DESTDIR)$(datadir)/themes/Greybird-bright
	test -e $(DESTDIR)$(datadir)/themes/Greybird-compact && rm -rfv $(DESTDIR)$(datadir)/themes/Greybird-compact
