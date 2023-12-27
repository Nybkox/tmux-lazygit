#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/utils.sh"
source "$CURRENT_DIR/helpers.sh"

toggle_lazygit_window() {
	local lazygit_window_name=$(get_lazygit_window_name)

	if [ "$(check_if_window_exists "$lazygit_window_name")" -eq 1 ]; then
		tmux select-window -t "$lazygit_window_name"
	else
		tmux new-window -n "$lazygit_window_name"
		tmux select-window -t "$lazygit_window_name"
		tmux send-keys -t "$lazygit_window_name" "lazygit" C-m
	fi
}

if [[ "$1" == "toggle_lazygit_window" ]]; then
	toggle_lazygit_window
fi
