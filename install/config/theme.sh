# Set links for Nautilius action icons
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-previous-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-previous-symbolic.svg
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-next-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-next-symbolic.svg

# Setup theme links
mkdir -p ~/.config/mechanicus/themes
for f in ~/.local/share/mechanicus/themes/*; do ln -nfs "$f" ~/.config/mechanicus/themes/; done

# Set initial theme to Eureka (default)
mkdir -p ~/.config/mechanicus/current
ln -snf ~/.config/mechanicus/themes/Eureka ~/.config/mechanicus/current/theme
ln -snf ~/.config/mechanicus/current/theme/backgrounds/eureka.png ~/.config/mechanicus/current/background

# Set specific app links for current theme
# ~/.config/mechanicus/current/theme/neovim.lua -> ~/.config/nvim/lua/plugins/theme.lua is handled via mechanicus-setup-nvim

mkdir -p ~/.config/btop/themes
ln -snf ~/.config/mechanicus/current/theme/btop.theme ~/.config/btop/themes/current.theme

mkdir -p ~/.config/mako
ln -snf ~/.config/mechanicus/current/theme/mako.ini ~/.config/mako/config

# Add managed policy directories for Chromium and Brave for theme changes
sudo mkdir -p /etc/chromium/policies/managed
sudo chmod a+rw /etc/chromium/policies/managed

sudo mkdir -p /etc/brave/policies/managed
sudo chmod a+rw /etc/brave/policies/managed
