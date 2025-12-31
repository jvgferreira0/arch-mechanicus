echo "Use explicit timezone selector when right-clicking on clock"

sed -i 's/mechanicus-cmd-tzupdate/mechanicus-launch-floating-terminal-with-presentation mechanicus-tz-select/g' ~/.config/waybar/config.jsonc
