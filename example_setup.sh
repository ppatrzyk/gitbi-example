#!/bin/bash
# This script sets variables if it's run as an example
# https://stackoverflow.com/a/246128
export GITBI_REPO_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export GITBI_POKEMON_TYPE=sqlite
export GITBI_POKEMON_CONN="$GITBI_REPO_DIR/pokemon.sqlite"
export GITBI_SHOOTINGS_TYPE=duckdb
export GITBI_SHOOTINGS_CONN=":memory:"
export GITBI_SUICIDE_TYPE=sqlite
export GITBI_SUICIDE_CONN="$GITBI_REPO_DIR/suicide.sqlite"
