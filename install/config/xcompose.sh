# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
include "%H/.local/share/mechanicus/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$MECHANICUS_USER_NAME"
<Multi_key> <space> <e> : "$MECHANICUS_USER_EMAIL"
EOF
