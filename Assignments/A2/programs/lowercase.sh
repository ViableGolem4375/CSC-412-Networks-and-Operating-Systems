#! /usr/bin/env bash

# This function reads in data from stdin, and goes character by character
# converting them to lowercase.
tolowercase() {
    # Declare variables
    local input="$1"
    local result=""

    # Convert each character to lowercase
    result=$(echo "$input" | tr '[:upper:]' '[:lower:]')

    echo "$result"
}

# Read data from stdin and process it
while IFS= read -r line; do
    result=$(tolowercase "$line")
    echo "$result"
done