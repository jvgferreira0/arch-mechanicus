# Set identification from install inputs
if [[ -n "${MECHANICUS_USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$MECHANICUS_USER_NAME"
fi

if [[ -n "${MECHANICUS_USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$MECHANICUS_USER_EMAIL"
fi
