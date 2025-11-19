#!/usr/bin/env bash

clear
echo


# ----------------------------------------------------------------------------------------------------------------
# you get ths installer via
# curl https://raw.githubusercontent.com/LowellInstruments/dep/refs/heads/main/lil_linux/linux_install.sh | bash
# ----------------------------------------------------------------------------------------------------------------



DEP_RAW_NO_BIN=https://raw.githubusercontent.com/LowellInstruments/dep/refs/heads/main/lil_linux/
DEP_RAW_BIN=https://github.com/LowellInstruments/dep/raw/refs/heads/main/lil_linux/lil_linux.bin
FOL=/opt/lil_linux



echo "--------------------"
echo "LIL linux installer v2"
echo "--------------------"


echo "This script requires root privileges to run certain commands."
sudo -v
rv=$?
if [ $rv -ne 0 ]; then
    echo "Incorrect password or root access denied. Exiting."
    exit 1
fi


# either to /opt/lil_linux or $HOME
echo; echo -e "\033[1;34mlil_linux.bin file\033[0m"
sudo rm -rf "$FOL"
sudo mkdir "$FOL" || true
cd "$FOL" || (echo "error, failed to create dir, leaving"; exit 1)
sudo wget -q --show-progress $DEP_RAW_BIN -O $FOL


echo; echo -e "\033[1;34msvg icon\033[0m"
sudo wget -q --show-progress $DEP_RAW_NO_BIN/icon_li_transparent.svg -O $FOL
sudo cp icon_li_transparent /usr/share/icons/hicolor/scalable/apps



echo; echo -e "\033[1;34mDesktop file\033[0m"
sudo wget -q --show-progress $DEP_RAW_NO_BIN/lil_linux.Desktop $FOL
sudo cp lil_linux.Desktop /usr/share/applications

