#!/bin/bash

set -eux

cd "$3"

mkdocs build --config-file "$1" --site-dir "$2"
