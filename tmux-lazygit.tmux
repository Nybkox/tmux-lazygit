#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

$CURRENT_DIR/scripts/tmux-lazygit.sh
