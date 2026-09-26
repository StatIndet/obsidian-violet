#!/bin/sh
set -eu

project_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
target_dir="$project_dir/test-vault/.obsidian/themes/Violet"

if [ ! -d "$project_dir/test-vault/.obsidian" ]; then
  printf '%s\n' 'Create the isolated test-vault first.' >&2
  exit 1
fi

mkdir -p "$target_dir"
cp "$project_dir/manifest.json" "$project_dir/theme.css" "$target_dir/"
printf 'Installed Violet in %s\n' "$target_dir"
