echo "Start screensaver automatically after 1 minute and stop before locking"

if ! grep -q "mechanicus-launch-screensaver" ~/.config/hypr/hypridle.conf; then
  mechanicus-refresh-hypridle
  mechanicus-refresh-hyprlock
fi
