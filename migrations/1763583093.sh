echo "Make ethereal available as new theme"

if [[ ! -L ~/.config/mechanicus/themes/ethereal ]]; then
  rm -rf ~/.config/mechanicus/themes/ethereal
  ln -nfs ~/.local/share/mechanicus/themes/ethereal ~/.config/mechanicus/themes/
fi
