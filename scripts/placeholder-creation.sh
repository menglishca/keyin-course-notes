#!/usr/bin/env bash

# Check if two arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <week_list_file> <parent_folder>"
    exit 1
fi

# Assign arguments to variables
week_list_file=$1
parent_folder=$2

# Check if the week list file exists
if [ ! -f "$week_list_file" ]; then
    echo "Error: Week list file '$week_list_file' does not exist."
    exit 1
fi

# Check if the parent folder exists, if not create it
if [ ! -d "$parent_folder" ]; then
    mkdir -p "$parent_folder"
fi

# Read the week list file line by line
while IFS= read -r entry; do
    # Extract the week number and title
    week_num=$(echo "$entry" | awk -F': ' '{print $1}' | sed 's/[^0-9]*//g')
    week_title=$(echo "$entry" | awk -F': ' '{print $2}')

    # Format week number with leading zeros
    week_num=$(printf "%02d" "$week_num")

    # Create the folder for the week inside the parent folder
    folder_name="$parent_folder/week-$week_num"
    mkdir -p "$folder_name"

    # Create the _index.md file inside the week folder
    index_file="$folder_name/_index.md"
    cat <<EOL > "$index_file"
---
title: $week_num - $week_title
cascade:
  type: docs
---
EOL

done < "$week_list_file"

echo "Folders and files created successfully!"