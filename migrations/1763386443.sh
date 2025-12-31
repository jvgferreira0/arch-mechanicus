echo "Uniquely identify terminal apps with custom app-ids using mechanicus-launch-tui"

# Replace terminal -e calls with mechanicus-launch-tui in bindings
sed -i 's/\$terminal -e \([^ ]*\)/mechanicus-launch-tui \1/g' ~/.config/hypr/bindings.conf

# Update waybar to use mechanicus-launch-or-focus with mechanicus-launch-tui for TUI apps
sed -i 's|xdg-terminal-exec btop|mechanicus-launch-or-focus-tui btop|' ~/.config/waybar/config.jsonc
sed -i 's|xdg-terminal-exec --app-id=com\.mechanicus\.Wiremix -e wiremix|mechanicus-launch-or-focus-tui wiremix|' ~/.config/waybar/config.jsonc
