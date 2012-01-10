ON_PREFIX=${CURDIR}/debian/openapp-nap
OPM_PREFIX=${CURDIR}/debian/openpanel-openapp-mod-nap
OPM_SRC=${CURDIR}/openpanel-openapp-mod-nap

build:
	convert -modulate 50,100,100 ${OPM_SRC}/networking.png ${OPM_SRC}/down_networking.png
	convert ${OPM_SRC}/wallpaper.png ${OPM_SOURCE}/wallpaper.jpg

install:
	mkdir -p ${OPM_PREFIX}/var/openpanel/modules/OpenAppNap.module
	mkdir -p ${OPM_PREFIX}/var/openpanel/wallpaper
	mkdir -p ${OPM_PREFIX}/var/openpanel/http/images
	cp ${OPM_SRC}/*.png ${OPM_PREFIX}/var/openpanel/modules/OpenAppNap.module/
	mv ${OPM_PREFIX}/var/openpanel/modules/OpenAppNap.module/logo.png ${OPM_PREFIX}/var/openpanel/http/images/OpenPanelLogo.png
	cp ${OPM_SRC}/wallpaper.jpg ${OPM_PREFIX}/var/openpanel/wallpaper/default.jpg

uninstall:
	rm -rf $(ON_PREFIX)
	rm -rf $(OPM_PREFIX)

clean:
	-echo "NOP"
