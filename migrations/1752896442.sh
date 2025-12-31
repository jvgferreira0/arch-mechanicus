echo "Replace volume control GUI with a TUI"

if mechanicus-cmd-missing wiremix; then
  mechanicus-pkg-add wiremix
  mechanicus-pkg-drop pavucontrol
  mechanicus-refresh-applications
  mechanicus-refresh-waybar
fi
