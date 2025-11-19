#!/usr/bin/env bash

clear
echo


Can ~/.local/share/applications override /usr/ ...


# ------------------------------------------------------------------------------------------------------
# you get ths installer via
# https://raw.githubusercontent.com/LowellInstruments/dep/refs/heads/main/lil_linux/linux_install | sh
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
wget $DEP/lil_linux.bin


echo; echo "svg icon"
wget $DEP/icon_li_transparent.svg


echo; echo "Desktop file"
wget $DEP/lil_linux.Desktop

