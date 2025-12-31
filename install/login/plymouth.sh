if [ "$(plymouth-set-default-theme)" != "mechanicus" ]; then
  sudo cp -r "$HOME/.local/share/mechanicus/default/plymouth" /usr/share/plymouth/themes/mechanicus/
  sudo plymouth-set-default-theme mechanicus
fi
