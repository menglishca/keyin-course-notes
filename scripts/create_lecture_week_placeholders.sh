#!/usr/bin/env bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <week_list_file> <parent_folder>"
    echo "Example of <week_list_file> format:"
    echo "Week 1: VSCode, Git and Github"
    echo "Week 2: Building CLI applications with Node.js"
    echo "Week 3: Reading and writing files; the event loop"
    echo "..."
    exit 1
fi

week_list_file=$1
parent_folder=$2

if [ ! -f "$week_list_file" ]; then
    echo "Error: Week list file '$week_list_file' does not exist."
    exit 1
fi

if [ ! -d "$parent_folder" ]; then
    mkdir -p "$parent_folder"
fi

while IFS= read -r entry; do
    week_num=$(echo "$entry" | awk -F': ' '{print $1}' | sed 's/[^0-9]*//g')
    week_title=$(echo "$entry" | awk -F': ' '{print $2}')

    week_num=$(printf "%02d" "$week_num")

    folder_name="$parent_folder/week-$week_num"
    mkdir -p "$folder_name"

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