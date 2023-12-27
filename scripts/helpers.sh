#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$CURRENT_DIR/utils.sh"

get_lazygit_window_name() {
	echo $(get_tmux_option "@tmux-lazygit-window-name" "LazyGit")
}
