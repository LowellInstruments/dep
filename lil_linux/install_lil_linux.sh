#!/usr/bin/env bash

clear
echo


Can ~/.local/share/applications override /usr/ ...
The paths for local and system-wide icon storage are /usr/share/icons for system-wide installation and ~/.local/share/icons or ~/.icons for user-specific installation.


# ---------------------------------------
# you get ths installer via
# $ curl <dst>/install_lil_linux.sh | sh
# ---------------------------------------



REP=https://raw.githubusercontent.com/LowellInstruments/dep/refs/heads/main/lil_linux/



echo "--------------------"
echo "LIL linux installer"
echo "--------------------"


if [ "$EUID" -ne 0 ]
  then echo "error, please run this script as root"
  exit 1
fi



echo; echo "lil_linux.bin file"
# wget
mkdir /opt/lil_linux || true
cp lil_linux.bin /opt/lil_linux



echo; echo "svg icon"
wget $REP/icon_li_transparent.svg
cp icon_li_transparent.svg /usr/share/icons/hicolor/scalable/apps
rm icon_li_transparent.svg



echo; echo "Desktop file"
wget $REP/lil_linux.Desktop
cp lil_linux.Desktop /usr/share/applications
rm lil_linux.Desktop

