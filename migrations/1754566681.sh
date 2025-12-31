echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/mechanicus/themes/osaka-jade ]]; then
  rm -rf ~/.config/mechanicus/themes/osaka-jade
  git -C ~/.local/share/mechanicus checkout -f themes/osaka-jade
  ln -nfs ~/.local/share/mechanicus/themes/osaka-jade ~/.config/mechanicus/themes/osaka-jade
fi
