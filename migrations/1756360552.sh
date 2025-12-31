echo "Move Mechanicus Package Repository after Arch core/extra/multilib and remove AUR"

mechanicus-refresh-pacman
sudo pacman -Syu --noconfirm
