echo "Add new matte black theme"

if [[ ! -L "~/.config/mechanicus/themes/matte-black" ]]; then
  ln -snf ~/.local/share/mechanicus/themes/matte-black ~/.config/mechanicus/themes/
fi
