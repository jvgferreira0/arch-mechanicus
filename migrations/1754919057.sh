echo "Improve tooltip for Mechanicus menu icon"

if grep -q "SUPER + ALT + SPACE" ~/.config/waybar/config.jsonc; then
  sed -i 's/SUPER + ALT + SPACE/Mechanicus Menu\\n\\nSuper + Alt + Space/' ~/.config/waybar/config.jsonc
fi
