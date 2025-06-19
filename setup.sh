#!/usr/bin/env bash

set -o pipefail
set -o errexit

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
source "${SCRIPT_DIR}/bootstrap"

if [ ! -z "$1" ]; then
    source $BOOTSTRAP_ROOT/setup.d/*-$1
else
    for script in "${BOOTSTRAP_ROOT}/setup.d/"*; do
        source "$script"
    done
fi
