echo "Update Waybar CSS to dim unused workspaces"

if ! grep -q "#workspaces button\.empty" ~/.config/waybar/style.css; then
  mechanicus-refresh-config waybar/style.css
  mechanicus-restart-waybar
fi
