#!/usr/bin/env bash
VERSION="$(sed -ne '/version/ s/[^.0-9]//gp' pyproject.toml)"
rm -rf dist &&
python3 -m build &&
twine check dist/* &&
twine upload --verbose dist/* &&
git tag "$VERSION"
