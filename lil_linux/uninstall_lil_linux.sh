#!/usr/bin/env bash

clear
echo


echo "---------------------"
echo "LIL linux uninstaller"
echo "---------------------"
echo


if [ "$EUID" -ne 0 ]
  then echo "error, please run this script as root"
  exit 1
fi



echo "lil_linux.bin file"
rm -rf /opt/lil_linux || true


echo; echo "svg icon"
rm /usr/share/icons/hicolor/scalable/apps/icon_li_transparent.svg



echo; echo "Desktop file"
rm /usr/share/applications/lil_linux.Desktop
