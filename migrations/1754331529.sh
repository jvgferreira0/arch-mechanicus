echo "Update Waybar for new Mechanicus menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  mechanicus-refresh-waybar
fi
