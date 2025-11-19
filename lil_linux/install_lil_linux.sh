#!/usr/bin/env bash

clear
echo


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
# wget
cp icon_li_transparent.svg /usr/share/icons/hicolor/scalable/apps
rm icon_li_transparent.svg



echo; echo "Desktop file"
# wget
cp lil_linux.Desktop /usr/share/applications
rm lil_linux.Desktop

