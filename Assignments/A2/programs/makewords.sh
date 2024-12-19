#! /usr/bin/env bash

# This function reads in some text, and separates the words into new lines.
makewords() {
    # Get variables for use below
    local input="$1"
    local result=""

    # Replace spaces with newlines
    result=$(echo "$input" | tr ' ' '\n')

    echo "$result"
}

# Read data from stdin and process it
while IFS= read -r line || [[ -n "$line" ]]; do
    result=$(makewords "$line")
    echo "$result"
done