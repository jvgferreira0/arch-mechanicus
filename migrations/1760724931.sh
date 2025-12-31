echo "Change to openai-codex instead of openai-codex-bin"

if mechanicus-pkg-present openai-codex-bin; then
    mechanicus-pkg-drop openai-codex-bin
    mechanicus-pkg-add openai-codex
fi
