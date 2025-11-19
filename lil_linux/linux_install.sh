#!/usr/bin/env bash

clear
echo


# ------------------------------------------------------------------------------------------------------
# you get ths installer via
# curl https://raw.githubusercontent.com/LowellInstruments/dep/refs/heads/main/lil_linux/linux_install | sh
# ------------------------------------------------------------------------------------------------------



DEP=https://raw.githubusercontent.com/LowellInstruments/dep/refs/heads/main/lil_linux/
FOL=$HOME/.local/lil_linux



echo "--------------------"
echo "LIL linux installer"
echo "--------------------"


# either to /opt/lil_linux or $HOME
echo; echo -e "\033[1;34mlil_linux.bin file\033[0m"
rm -rf "$FOL"
mkdir "$FOL" || true
cd "$FOL" || (echo "error, failed to create dir, leaving"; exit 1)
wget -q --show-progress $DEP/lil_linux.bin


echo; echo -e "\033[1;34msvg icon\033[0m"
wget -q --show-progress $DEP/icon_li_transparent.svg


echo; echo -e "\033[1;34mDesktop file\033[0m"
wget -q --show-progress $DEP/lil_linux.Desktop

