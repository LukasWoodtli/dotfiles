#!/bin/bash

set -e
set -u

readonly THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# setup plugins (only available from tmux 1.9 upwards)
if [ `tmux -V | sed 's#tmux \([0-9]\)\.\([0-9]\)#\1\2#'` -ge 19 ]
then
	pushd "$THIS_SCRIPT_DIR"
	tmux new-session -s temp -d
	tmux send-keys -t temp "shell ./plugins/tpm/bindings/install_plugins C-m"
	tmux kill-session -t temp
	popd
fi

