echo "Allow updating of timezone by right-clicking on the clock (or running mechanicus-cmd-tzupdate)"

if mechanicus-cmd-missing tzupdate; then
  bash "$MECHANICUS_PATH/install/config/timezones.sh"
  mechanicus-refresh-waybar
fi
