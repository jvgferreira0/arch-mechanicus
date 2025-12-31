echo "Install Impala as new wifi selection TUI"

if mechanicus-cmd-missing impala; then
  mechanicus-pkg-add impala
  mechanicus-refresh-waybar
fi
