MECHANICUS_MIGRATIONS_STATE_PATH=~/.local/state/mechanicus/migrations
mkdir -p $MECHANICUS_MIGRATIONS_STATE_PATH

for file in ~/.local/share/mechanicus/migrations/*.sh; do
  touch "$MECHANICUS_MIGRATIONS_STATE_PATH/$(basename "$file")"
done
