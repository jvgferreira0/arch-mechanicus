# Set up zsh as default shell
echo "Setting up zsh..."

# Change default shell to zsh
if [ "$SHELL" != "/usr/bin/zsh" ]; then
  chsh -s /usr/bin/zsh "$USER"
  echo "Default shell changed to zsh"
fi

# Copy zsh configuration
cp ~/.local/share/mechanicus/default/zsh/zshrc ~/.zshrc
echo "zsh configuration installed"

# Set Zen as default browser
xdg-settings set default-web-browser zen-browser.desktop 2>/dev/null || true
echo "Zen browser set as default"
