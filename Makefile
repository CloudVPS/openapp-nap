ON_PREFIX=${CURDIR}/debian/openapp-nap
OPM_PREFIX=${CURDIR}/debian/openpanel-openapp-nap-artwork
OPM_SRC=${CURDIR}/openpanel-openapp-nap-artwork

build:
	convert ${OPM_SRC}/wallpaper.png ${OPM_SRC}/wallpaper.jpg

install:
	mkdir -p ${OPM_PREFIX}/var/openpanel/wallpaper
	mkdir -p ${OPM_PREFIX}/var/openpanel/http/images
	cp ${OPM_SRC}/logo.png ${OPM_PREFIX}/var/openpanel/http/images/OpenPanelLogo.png
	cp ${OPM_SRC}/wallpaper.jpg ${OPM_PREFIX}/var/openpanel/wallpaper/default.jpg

uninstall:
	rm -rf $(ON_PREFIX)
	rm -rf $(OPM_PREFIX)

clean:
	-echo "NOP"
