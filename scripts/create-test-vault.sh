#!/bin/sh
set -eu

project_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
vault_dir="$project_dir/test-vault"

mkdir -p "$vault_dir/.obsidian"
if [ ! -e "$vault_dir/Baseline.md" ]; then
  cp "$project_dir/tests/markdown-baseline.md" "$vault_dir/Baseline.md"
fi
if [ ! -e "$vault_dir/.obsidian/appearance.json" ]; then
  printf '%s\n' '{"baseFontSize":16,"theme":"obsidian","cssTheme":""}' > "$vault_dir/.obsidian/appearance.json"
fi
printf 'Test vault ready at %s\n' "$vault_dir"
