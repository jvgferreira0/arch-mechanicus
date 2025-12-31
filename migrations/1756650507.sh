echo "Fix JetBrains font setting"

if [[ $(mechanicus-font-current) == JetBrains* ]]; then
  mechanicus-font-set "JetBrainsMono Nerd Font"
fi
