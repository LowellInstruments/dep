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
echo; echo "lil_linux.bin file"
mkdir "$FOL" || true
cd "$FOL" || (echo "error, failed to create dir, leaving"; exit 1)
rm lil_linux.bin
wget $DEP/lil_linux.bin


echo; echo "svg icon"
rm icon_li_transparent.svg
wget $DEP/icon_li_transparent.svg


echo; echo "Desktop file"
rm lil_linux.Desktop
wget $DEP/lil_linux.Desktop

