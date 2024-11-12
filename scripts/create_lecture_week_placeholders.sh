#!/usr/bin/env bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <topic_list_file> <parent_folder>"
    echo "Example of <topic_list_file> format:"
    echo "Topic 1: VSCode, Git and Github"
    echo "Topic 2: Building CLI applications with Node.js"
    echo "Topic 3: Reading and writing files; the event loop"
    echo "..."
    exit 1
fi

topic_list_file=$1
parent_folder=$2

if [ ! -f "$topic_list_file" ]; then
    echo "Error: Topic list file '$topic_list_file' does not exist."
    exit 1
fi

if [ ! -d "$parent_folder" ]; then
    mkdir -p "$parent_folder"
fi

while IFS= read -r entry; do
    topic_num=$(echo "$entry" | awk -F': ' '{print $1}' | sed 's/[^0-9]*//g')
    topic_title=$(echo "$entry" | awk -F': ' '{print $2}')

    topic_num=$(printf "%02d" "$topic_num")

    folder_name="$parent_folder/topic-$topic_num"
    mkdir -p "$folder_name"

    index_file="$folder_name/_index.md"
    cat <<EOL > "$index_file"
---
title: $topic_num - $topic_title
cascade:
  type: docs
---
EOL

done < "$topic_list_file"

echo "Folders and files created successfully!"