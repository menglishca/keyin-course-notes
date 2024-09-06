#!/usr/bin/env bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <lecture_directory> <pretty_title>"
    exit 1
fi

lecture_directory=$1
pretty_title=$2

if [ ! -d "$lecture_directory" ]; then
    mkdir -p "$lecture_directory"
fi

index_file="$lecture_directory/_index.md"
cat <<EOL > "$index_file"
---
title: $pretty_title
cascade:
  type: docs
---
EOL

echo "Lecture created successfully at ${lecture_directory}"