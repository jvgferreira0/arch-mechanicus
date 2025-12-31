echo "Replace bluetooth GUI with TUI"

mechanicus-pkg-add bluetui
mechanicus-pkg-drop blueberry

if ! grep -q "mechanicus-launch-bluetooth" ~/.config/waybar/config.jsonc; then
  sed -i 's/blueberry/mechanicus-launch-bluetooth/' ~/.config/waybar/config.jsonc
fi
