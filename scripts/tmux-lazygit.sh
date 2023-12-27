#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COMMANDS_FILE="$CURRENT_DIR/commands.sh"

source "$CURRENT_DIR/utils.sh"

main() {
	tmux set-environment -g TMUX_LAZYGIT_COMMANDS_FILE "$COMMANDS_FILE"

	if [ $(get_tmux_option @tmux-lazygit-default-keybindings true) = "true" ]; then
		tmux unbind-key g
		tmux bind-key -r g run-shell "#{TMUX_LAZYGIT_COMMANDS_FILE} toggle_lazygit_window"
	fi

	bind_if_set @tmux-lazygit-toggle-window-key 'run-shell "#{TMUX_LAZYGIT_COMMANDS_FILE} toggle_lazygit_window"'
}

main
