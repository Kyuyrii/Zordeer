PREFIX ?= /usr/local

install:
	install -Dm755 zordeer $(DESTDIR)$(PREFIX)/bin/zordeer
	install -Dm644 io.github.kyuyrii.zordeer.desktop $(DESTDIR)$(PREFIX)/share/applications/io.github.kyuyrii.zordeer.desktop
	install -Dm644 io.github.kyuyrii.zordeer.svg $(DESTDIR)$(PREFIX)/share/icons/hicolor/scalable/apps/io.github.kyuyrii.zordeer.svg
	install -Dm644 metainfo/io.github.kyuyrii.zordeer.metainfo.xml $(DESTDIR)$(PREFIX)/share/metainfo/io.github.kyuyrii.zordeer.metainfo.xml
	install -Dm644 translation/*.toml -t $(DESTDIR)$(PREFIX)/share/Zordeer/translation
