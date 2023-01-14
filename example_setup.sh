#!/bin/bash
# This script sets variables if it's run as an example
export GITBI_REPO_DIR=$( dirname -- "$0" | xargs realpath)
export GITBI_POKEMON_TYPE=sqlite
export GITBI_POKEMON_CONN="$GITBI_REPO_DIR/pokemon.sqlite"
