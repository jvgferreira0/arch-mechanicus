echo "Update fastfetch config with new Mechanicus logo"

mechanicus-refresh-config fastfetch/config.jsonc

mkdir -p ~/.config/mechanicus/branding
cp $MECHANICUS_PATH/icon.txt ~/.config/mechanicus/branding/about.txt
