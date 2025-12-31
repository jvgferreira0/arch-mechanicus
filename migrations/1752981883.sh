echo "Replace wofi with walker as the default launcher"

if mechanicus-cmd-missing walker; then
  mechanicus-pkg-add walker-bin libqalculate

  mechanicus-pkg-drop wofi
  rm -rf ~/.config/wofi

  mkdir -p ~/.config/walker
  cp -r ~/.local/share/mechanicus/config/walker/* ~/.config/walker/
fi
