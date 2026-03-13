#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

echo "Initializing template into $TMP_DIR..."
rill init --template empty-duckdb "$TMP_DIR"
rill init --template claude --force "$TMP_DIR"

echo "Copying skills, CLAUDE.md, and .mcp.json into repo..."
rm -rf "$REPO_DIR/skills"
mkdir -p "$REPO_DIR/skills"
cp -r "$TMP_DIR/.claude/skills" "$REPO_DIR/skills"
cp -f "$TMP_DIR/.claude/CLAUDE.md" "$REPO_DIR/AGENTS.md"
cp -f "$TMP_DIR/.mcp.json" "$REPO_DIR/.mcp.json"

echo "Done."
