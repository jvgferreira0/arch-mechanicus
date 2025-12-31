# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(MECHANICUS_CHROOT_INSTALL|MECHANICUS_ONLINE_INSTALL|MECHANICUS_USER_NAME|MECHANICUS_USER_EMAIL|USER|HOME|MECHANICUS_REPO|MECHANICUS_REF|MECHANICUS_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done
