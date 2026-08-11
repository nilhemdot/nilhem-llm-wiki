#!/usr/bin/env bash
# One-command Wiki Layer setup for Obsidian
# Usage: ./scripts/setup-wiki-layer.sh [path-to-your-vault]

set -e

VAULT="${1:-.}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(dirname "$SCRIPT_DIR")"

echo "→ Setting up Wiki Layer in: $VAULT"

# Create required folders
mkdir -p "$VAULT/raw"
mkdir -p "$VAULT/wiki"
mkdir -p "$VAULT/templates"

# Copy templates
cp -n "$ROOT/templates/"*.md "$VAULT/templates/" 2>/dev/null || true
echo "✓ Templates copied"

# Copy wiki dashboards and indexes
cp -n "$ROOT/wiki/"*.md "$VAULT/wiki/" 2>/dev/null || true
echo "✓ Dashboards and indexes copied"

# Copy docs
mkdir -p "$VAULT/docs"
cp -n "$ROOT/docs/"*.md "$VAULT/docs/" 2>/dev/null || true
echo "✓ Documentation copied"

echo ""
echo "Setup complete!"
echo ""
echo "Next steps:"
echo "1. Open the vault in Obsidian"
echo "2. Install plugins: Dataview, Templater, Obsidian Charts (or Charts View), Buttons, Linter, QuickAdd"
echo "3. In Templater settings → Template folder location = templates"
echo "4. (Optional) Set wiki/Interactive-Dashboard.md or wiki/Mobile-Dashboard.md as Homepage"
echo "5. Drop raw files into raw/ and use the wiki-layer-ingest skill or the structuring agent prompt"
echo ""
echo "Recommended hotkeys (QuickAdd):"
echo "  Ctrl/Cmd+Shift+C → New Concept"
echo "  Ctrl/Cmd+Shift+R → New Research"
echo "  Ctrl/Cmd+Shift+M → New Meeting"
echo "  Ctrl/Cmd+Shift+P → New Project"
echo "  Ctrl/Cmd+Shift+Q → Quick Capture"
