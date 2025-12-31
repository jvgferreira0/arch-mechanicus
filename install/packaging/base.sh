# Install all base packages
mapfile -t packages < <(grep -v '^#' "$MECHANICUS_INSTALL/mechanicus-base.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${packages[@]}"
