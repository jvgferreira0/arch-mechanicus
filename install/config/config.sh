# Copy over Mechanicus configs
mkdir -p ~/.config
cp -R ~/.local/share/mechanicus/config/* ~/.config/

# Use default bashrc from Mechanicus
cp ~/.local/share/mechanicus/default/bashrc ~/.bashrc
