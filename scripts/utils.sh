#!/bin/bash

get_tmux_option() {
	local option=$1
	local default_value=$2
	local option_value=$(tmux show-option -gqv "$option")

	if [ -z "$option_value" ]; then
		echo $default_value
	else
		echo $option_value
	fi
}

get_current_window() {
	echo $(tmux display-message -p '#W')
}

bind_if_set() {
	local key=$1
	local command=$2
	local option=$(get_tmux_option "$key")

	if [ "$option" != "" ]; then
		tmux unbind-key "$option"
		tmux bind-key "$option" "$command"
	fi
}

check_if_window_exists() {
	local window_name=$1
	result=$(tmux list-windows -F "#{window_name}" | grep -i "$window_name")

	if [ -n "$result" ]; then
		echo 1
	else
		echo 0
	fi
}
