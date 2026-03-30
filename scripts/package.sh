#!/usr/bin/env bash
set -euo pipefail

# Assembles a marketplace ZIP from the plugin submodules.
# Usage: ./scripts/package.sh [output-path]
# Default output: ./ios-claude-plugins.zip

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUTPUT="${1:-$REPO_ROOT/ios-claude-plugins.zip}"
STAGING="$(mktemp -d)"

trap 'rm -rf "$STAGING"' EXIT

echo "==> Updating submodules..."
cd "$REPO_ROOT"
git submodule update --init --recursive

echo "==> Staging marketplace contents..."
cp marketplace.json "$STAGING/"
mkdir -p "$STAGING/plugins"

for plugin_dir in plugins/*/; do
  plugin_name="$(basename "$plugin_dir")"
  dest="$STAGING/plugins/$plugin_name"
  mkdir -p "$dest"

  # Copy only the .claude skill tree and metadata files
  if [ -d "$plugin_dir/.claude" ]; then
    cp -R "$plugin_dir/.claude" "$dest/"
  fi
  for f in LICENSE README.md QUICKSTART.md; do
    [ -f "$plugin_dir/$f" ] && cp "$plugin_dir/$f" "$dest/"
  done
done

echo "==> Creating ZIP..."
cd "$STAGING"
zip -r "$OUTPUT" . -x '.*' > /dev/null

echo "==> Done: $OUTPUT"
