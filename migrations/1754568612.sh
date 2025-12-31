echo "Update Waybar config to fix path issue with update-available icon click"

if grep -q "alacritty --class Mechanicus --title Mechanicus -e mechanicus-update" ~/.config/waybar/config.jsonc; then
  sed -i 's|\("on-click": "alacritty --class Mechanicus --title Mechanicus -e \)mechanicus-update"|\1mechanicus-update"|' ~/.config/waybar/config.jsonc
  mechanicus-restart-waybar
fi
