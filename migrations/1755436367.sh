echo "Add minimal starship prompt to terminal"

if mechanicus-cmd-missing starship; then
  mechanicus-pkg-add starship
  cp $MECHANICUS_PATH/config/starship.toml ~/.config/starship.toml
fi
