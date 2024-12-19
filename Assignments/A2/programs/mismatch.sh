#! /usr/bin/env bash

# Function to read the dictionary file and store words in an array
read_dict() {

    # Read in the file.
    local filename="unix_dict.text"

    # Check to make sure the file actually exists.
    if [[ ! -f "$filename" ]]; then
        echo "Failed to open file" >&2
        exit 1
    fi

    mapfile -t dict < "$filename"
}

# Function to check if a word is in the dictionary
is_in_dict() {
    local word="$1"
    for dict_word in "${dict[@]}"; do
        if [[ "$dict_word" == "$word" ]]; then
            return 0
        fi
    done
    return 1
}

# Read the dictionary file
read_dict

# Read data from stdin and process it
while IFS= read -r line; do
    if ! is_in_dict "$line"; then
        echo "$line"
    fi
done