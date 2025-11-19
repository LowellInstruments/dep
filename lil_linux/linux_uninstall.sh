#!/usr/bin/env bash

clear
echo



FOL=$HOME/.local/lil_linux


echo -e "\033[1;34m-------------------------\033[0m"
echo -e "\033[1;34mLIL linux UNinstaller v05\033[0m"
echo -e "\033[1;34m-------------------------\033[0m"


echo
echo "Uninstalling requires root privileges."
sudo -v
rv=$?
if [ $rv -ne 0 ]; then
    echo -e "\033[1;33mIncorrect password or root access denied.\033[0m"
    exit 1
fi


sudo rm /opt/lil_linux/lil_linux.bin
sudo rm /usr/share/applications/lil_linux.desktop
sudo rm /usr/share/icons/hicolor/scalable/apps/icon_li_transparent.svg

