echo "Add the new Flexoki Light theme"

if [[ ! -L ~/.config/mechanicus/themes/flexoki-light ]]; then
  ln -nfs ~/.local/share/mechanicus/themes/flexoki-light ~/.config/mechanicus/themes/
fi
