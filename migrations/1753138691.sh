echo "Install swayOSD to show volume status"

if mechanicus-cmd-missing swayosd-server; then
  mechanicus-pkg-add swayosd
  setsid uwsm-app -- swayosd-server &>/dev/null &
fi
