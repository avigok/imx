#!/bin/sh

# base packages incl. utils, wireless tools, libs
for pkg in pciutils iperf3 hostapd wpa-supplicant\
	 bridge-utils htop dropbear dnsmasq\
	 iptables sysstat git python3\
	 kernel-devsrc binutils packagegroup-core-buildessential\
	 iw dtc openssl libssl libnl libnl-genl rsync\
	 pulseaudio-server\
	 pulseaudio-module-bluetooth-discover\
	 pulseaudio-module-bluetooth-policy\
	 pulseaudio-module-bluez5-device\
	 pulseaudio-module-bluez5-discover
do
	# Applicable from Yocto 3.4+ (Honister+)
	# ---------------------------------------------------
	# if conf/local.conf has CONF_VERSION = "2",
	# adapt IMAGE_INSTALL_append to IMAGE_INSTALL:append
	# ---------------------------------------------------
	echo IMAGE_INSTALL_append += "\" $pkg\"" >> conf/local.conf
done
