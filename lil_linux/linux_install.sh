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



echo -e "\033[1;34m----------------------\033[0m"
echo -e "\033[1;34mLIL linux installer v4\033[0m"
echo -e "\033[1;34m----------------------\033[0m"


echo
echo "Installing requires root privileges."
sudo -v
rv=$?
if [ $rv -ne 0 ]; then
    echo -e "\033[1;33mIncorrect password or root access denied.\033[0m"
    exit 1
fi



echo; echo -e "\033[1;34mlil_linux.bin file\033[0m"
sudo rm -rf "$FOL"
sudo mkdir "$FOL" || true
cd "$FOL" || (echo "error, failed to create dir, leaving"; exit 1)
sudo wget -q --show-progress $DEP_RAW_BIN \
    -O $FOL/lil_linux.bin


echo; echo -e "\033[1;34msvg icon\033[0m"
sudo wget -q --show-progress $DEP_RAW_NO_BIN/icon_li_transparent.svg \
    -O /usr/share/icons/hicolor/scalable/apps/icon_li_transparent.svg



echo; echo -e "\033[1;34mDesktop file\033[0m"
sudo wget -q --show-progress $DEP_RAW_NO_BIN/lil_linux.desktop \
    -O /usr/share/applications/lil_linux.desktop

