source $MECHANICUS_INSTALL/preflight/guard.sh
source $MECHANICUS_INSTALL/preflight/begin.sh
run_logged $MECHANICUS_INSTALL/preflight/show-env.sh
run_logged $MECHANICUS_INSTALL/preflight/pacman.sh
run_logged $MECHANICUS_INSTALL/preflight/migrations.sh
run_logged $MECHANICUS_INSTALL/preflight/first-run-mode.sh
run_logged $MECHANICUS_INSTALL/preflight/disable-mkinitcpio.sh
