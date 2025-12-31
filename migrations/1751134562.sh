echo "Ensure all indexes and packages are up to date"

mechanicus-refresh-pacman
sudo pacman -Syu --noconfirm
