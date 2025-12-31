echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/mechanicus/themes/ristretto ]]; then
  ln -nfs ~/.local/share/mechanicus/themes/ristretto ~/.config/mechanicus/themes/
fi
