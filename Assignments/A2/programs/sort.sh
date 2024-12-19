#! /usr/bin/env bash

# Function to sort an array of words
bubble_sort() {
    local array=("$@")
    local n=${#array[@]}
    local temp

    for ((i = 0; i < n; i++)); do
        for ((j = 0; j < n - i - 1; j++)); do
            if [[ "${array[j]}" > "${array[j+1]}" ]]; then
                # Swap
                temp=${array[j]}
                array[j]=${array[j+1]}
                array[j+1]=$temp
            fi
        done
    done

    echo "${array[@]}"
}

# Read words from command line input
words=()
while IFS= read -r word; do
    words+=("$word")
done

# Sort the words using bubble sort
sorted_words=$(bubble_sort "${words[@]}")

# Print the sorted words
for word in $sorted_words; do
    echo "$word"
done