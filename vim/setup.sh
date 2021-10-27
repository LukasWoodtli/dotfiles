#/usr/bin/env bash

set -e
set -u

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VUNDLE_RC_FILE="${BASEDIR}/bundle.vim"

vim -u "${VUNDLE_RC_FILE}" +PluginInstall +qall
