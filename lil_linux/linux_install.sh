#!/usr/bin/env bash

clear
echo


# ------------------------------------------------------------------------------------------------------
# you get ths installer via
# curl https://raw.githubusercontent.com/LowellInstruments/dep/refs/heads/main/lil_linux/linux_install | sh
# ------------------------------------------------------------------------------------------------------



DEP_RAW_NO_BIN=https://raw.githubusercontent.com/LowellInstruments/dep/refs/heads/main/lil_linux/
DEP_RAW_BIN=https://github.com/LowellInstruments/dep/raw/refs/heads/main/lil_linux/lil_linux.bin
FOL=$HOME/.local/lil_linux



echo "--------------------"
echo "LIL linux installer v2"
echo "--------------------"


# either to /opt/lil_linux or $HOME
echo; echo -e "\033[1;34mlil_linux.bin file\033[0m"
rm -rf "$FOL"
mkdir "$FOL" || true
cd "$FOL" || (echo "error, failed to create dir, leaving"; exit 1)
wget -q --show-progress $DEP_RAW_BIN


echo; echo -e "\033[1;34msvg icon\033[0m"
wget -q --show-progress $DEP_RAW_NO_BIN/icon_li_transparent.svg


echo; echo -e "\033[1;34mDesktop file\033[0m"
wget -q --show-progress $DEP_RAW_NO_BIN/lil_linux.Desktop

