#! /usr/bin/env bash

# Read words from command line input
words=()
while IFS= read -r word; do
    words+=("$word")
done

# Function to remove duplicate words
remove_dupes() {
    local array=("$@")
    local unique=()
    local seen=()

    # Looping logic to traverse the array.
    for word in "${array[@]}"; do
        if [[ ! " ${seen[*]} " =~ " ${word} " ]]; then
            unique+=("$word")
            seen+=("$word")
        fi
    done

    echo "${unique[@]}"
}

# Remove duplicates
unique_words=$(remove_dupes "${words[@]}")

# Print the unique words
for word in $unique_words; do
    echo "$word"
done