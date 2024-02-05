#!/bin/bash

set -eux

cd "$3"

if test -d .git; then
  git config --global --add safe.directory "$(realpath "$3")"
fi

mkdocs build --config-file "$1" --site-dir "$2"
