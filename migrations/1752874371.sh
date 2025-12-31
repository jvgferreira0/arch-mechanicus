echo "Add Catppuccin Latte light theme"

if [[ ! -L "~/.config/mechanicus/themes/catppuccin-latte" ]]; then
  ln -snf ~/.local/share/mechanicus/themes/catppuccin-latte ~/.config/mechanicus/themes/
fi
