#!/usr/bin/env bash

TMUX_WIN_ID=`tmux display -p "#{window_id}" | cut -c 2-`
export NVIM_LISTEN_ADDRESS="/tmp/nvim-$TMUX_WIN_ID"

if [ -e $NVIM_LISTEN_ADDRESS ]; then
    nvr $@
else 
    nvim $@
fi
