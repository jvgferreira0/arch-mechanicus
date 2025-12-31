echo "Migrate to proper packages for localsend and asdcontrol"

if mechanicus-pkg-present localsend-bin; then
  mechanicus-pkg-drop localsend-bin
  mechanicus-pkg-add localsend
fi

if mechanicus-pkg-present asdcontrol-git; then
  mechanicus-pkg-drop asdcontrol-git
  mechanicus-pkg-add asdcontrol
fi
