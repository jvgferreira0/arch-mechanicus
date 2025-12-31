echo "Adding Mechanicus version info to fastfetch"
if ! grep -q "mechanicus" ~/.config/fastfetch/config.jsonc; then
  cp ~/.local/share/mechanicus/config/fastfetch/config.jsonc ~/.config/fastfetch/
fi

