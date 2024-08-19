#!/bin/bash

# This script will execute the command with any arguments passed to it

# # Check if a command is provided
# if [ "$#" -eq 0 ]; then
#     echo "Usage: $0 <command> [args...]"
#     exit 1
# fi

# # Extract the command to execute
# command="$1"
# shift

# Execute the command with the remaining arguments
# exec reflex "$@"
exec reflex -r '(\.go$|go\.mod|^.env)' --decoration=none -s go run "$@"