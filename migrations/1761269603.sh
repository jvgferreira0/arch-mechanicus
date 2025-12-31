echo "Add right-click terminal action to waybar mechanicus menu icon"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f "$WAYBAR_CONFIG" ]] && ! grep -A5 '"custom/mechanicus"' "$WAYBAR_CONFIG" | grep -q '"on-click-right"'; then
  sed -i '/"on-click": "mechanicus-menu",/a\    "on-click-right": "mechanicus-launch-terminal",' "$WAYBAR_CONFIG"
fi
