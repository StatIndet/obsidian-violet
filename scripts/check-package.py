#!/usr/bin/env python3
"""Check the small metadata contract used by Obsidian and the release tag."""

import argparse
import json
from pathlib import Path


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--tag", help="Release tag, for example v0.1.0")
    args = parser.parse_args()

    manifest = json.loads(Path("manifest.json").read_text())
    package = json.loads(Path("package.json").read_text())

    assert manifest["name"] == "Violet", "Unexpected theme name"
    assert manifest["version"] == package["version"], "Version mismatch"
    assert package["license"] == "MIT", "Package license mismatch"
    assert "Copyright (c) 2026 StatIndet" in Path("LICENSE").read_text(), "Missing Violet license"
    assert manifest["minAppVersion"], "Missing Obsidian minimum version"
    assert manifest["author"], "Missing theme author"
    if args.tag:
        assert args.tag == f'v{manifest["version"]}', "Tag and manifest version differ"


if __name__ == "__main__":
    main()
