echo "Add UWSM env"

export MECHANICUS_PATH="$HOME/.local/share/mechanicus"
export PATH="$MECHANICUS_PATH/bin:$PATH"

mkdir -p "$HOME/.config/uwsm/"
cat <<EOF | tee "$HOME/.config/uwsm/env"
export MECHANICUS_PATH=$HOME/.local/share/mechanicus
export PATH=$MECHANICUS_PATH/bin/:$PATH
EOF

# Ensure we have the latest repos and are ready to pull
mechanicus-refresh-pacman
sudo systemctl restart systemd-timesyncd
sudo pacman -Sy # Normally not advisable, but we'll do a full -Syu before finishing

mkdir -p ~/.local/state/mechanicus/migrations
touch ~/.local/state/mechanicus/migrations/1751134560.sh

# Remove old AUR packages to prevent a super lengthy build on old Mechanicus installs
mechanicus-pkg-drop zoom qt5-remoteobjects wf-recorder wl-screenrec

# Get rid of old AUR packages
bash $MECHANICUS_PATH/migrations/1756060611.sh
touch ~/.local/state/mechanicus/migrations/1756060611.sh

bash mechanicus-update-perform
