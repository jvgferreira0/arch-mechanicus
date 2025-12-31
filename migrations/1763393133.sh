echo "Link new theme picker config"

mkdir -p ~/.config/elephant/menus
ln -snf $MECHANICUS_PATH/default/elephant/mechanicus_themes.lua ~/.config/elephant/menus/mechanicus_themes.lua
sed -i '/"menus",/d' ~/.config/walker/config.toml
mechanicus-restart-walker
