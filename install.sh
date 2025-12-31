#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define Mechanicus locations
export MECHANICUS_PATH="$HOME/.local/share/mechanicus"
export MECHANICUS_INSTALL="$MECHANICUS_PATH/install"
export MECHANICUS_INSTALL_LOG_FILE="/var/log/mechanicus-install.log"
export PATH="$MECHANICUS_PATH/bin:$PATH"

# Install
source "$MECHANICUS_INSTALL/helpers/all.sh"
source "$MECHANICUS_INSTALL/preflight/all.sh"
source "$MECHANICUS_INSTALL/packaging/all.sh"
source "$MECHANICUS_INSTALL/config/all.sh"
source "$MECHANICUS_INSTALL/login/all.sh"
source "$MECHANICUS_INSTALL/post-install/all.sh"
