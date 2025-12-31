echo "Make hackerman available as new theme"

if [[ ! -L ~/.config/mechanicus/themes/hackerman ]]; then
  rm -rf ~/.config/mechanicus/themes/hackerman
  ln -nfs ~/.local/share/mechanicus/themes/hackerman ~/.config/mechanicus/themes/
fi
