#!/bin/bash

# Set install mode to online since boot.sh is used for curl installations
export MECHANICUS_ONLINE_INSTALL=true

ansi_art='
     █████╗ ██████╗  ██████╗██╗  ██╗
    ██╔══██╗██╔══██╗██╔════╝██║  ██║
    ███████║██████╔╝██║     ███████║
    ██╔══██║██╔══██╗██║     ██╔══██║
    ██║  ██║██║  ██║╚██████╗██║  ██║
    ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝

███╗   ███╗███████╗ ██████╗██╗  ██╗ █████╗ ███╗   ██╗██╗ ██████╗██╗   ██╗███████╗
████╗ ████║██╔════╝██╔════╝██║  ██║██╔══██╗████╗  ██║██║██╔════╝██║   ██║██╔════╝
██╔████╔██║█████╗  ██║     ███████║███████║██╔██╗ ██║██║██║     ██║   ██║███████╗
██║╚██╔╝██║██╔══╝  ██║     ██╔══██║██╔══██║██║╚██╗██║██║██║     ██║   ██║╚════██║
██║ ╚═╝ ██║███████╗╚██████╗██║  ██║██║  ██║██║ ╚████║██║╚██████╗╚██████╔╝███████║
╚═╝     ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═════╝ ╚══════╝
'

clear
echo -e "\n$ansi_art\n"

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to your arch-mechanicus fork
MECHANICUS_REPO="${MECHANICUS_REPO:-jvgferreira/arch-mechanicus}"

echo -e "\nCloning arch-mechanicus from: https://github.com/${MECHANICUS_REPO}.git"
rm -rf ~/.local/share/mechanicus/
git clone "https://github.com/${MECHANICUS_REPO}.git" ~/.local/share/mechanicus >/dev/null

# Use custom branch if instructed, otherwise default to master
MECHANICUS_REF="${MECHANICUS_REF:-master}"
if [[ $MECHANICUS_REF != "master" ]]; then
  echo -e "\e[32mUsing branch: $MECHANICUS_REF\e[0m"
  cd ~/.local/share/mechanicus
  git fetch origin "${MECHANICUS_REF}" && git checkout "${MECHANICUS_REF}"
  cd -
fi

echo -e "\nInstallation starting..."
source ~/.local/share/mechanicus/install.sh
