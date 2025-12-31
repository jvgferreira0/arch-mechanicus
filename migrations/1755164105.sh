echo "Switch to Mechanicus Chromium for synchronized theme switching"

if mechanicus-cmd-present chromium; then
  set_theme_colors() {
    if [[ -f ~/.config/mechanicus/current/theme/chromium.theme ]]; then
      chromium --no-startup-window --set-theme-color="$(<~/.config/mechanicus/current/theme/chromium.theme)"
    else
      # Use a default, neutral grey if theme doesn't have a color
      chromium --no-startup-window --set-theme-color="28,32,39"
    fi
  }

  mechanicus-pkg-drop chromium
  mechanicus-pkg-add mechanicus-chromium

  if pgrep -x chromium; then
    if gum confirm "Chromium must be restarted. Ready?"; then
      pkill -x chromium
      set_theme_colors
    fi
  else
    set_theme_colors
  fi
fi
