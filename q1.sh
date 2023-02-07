#!/bin/bash

# Function to determine if a file or directory is a regular file, directory or another type
file_type() {
  local type=" "
  if [ -f "$1" ]; then
    type="Regular file"
  elif [ -d "$1" ]; then
    type="Directory"
  else
    type="Other type of file"
  fi
  echo "$1 is a $type"
}

# Function to count the number of files in a directory
file_count() {
  local count=$(ls "$1" | wc -l)
  echo "There are $count files in $1"
}

# Main script
for file in "$@"; do
  file_type "$file"
  ls -l "$file"
  if [ -d "$file" ]; then
    file_count "$file"
  fi
done




