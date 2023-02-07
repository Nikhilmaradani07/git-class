#!/bin/bash

# Create the folder1 directory if it doesn't exist
mkdir -p folder1

# Create files f_1, f_2, and f_3 in folder1
touch folder1/f_{1..3}

# Set the permissions for folder1 to 700 (rwx for owner only)
chmod 700 folder1

# Set the permissions for all files in folder1 to 600 (rw for owner only)
find folder1 -type f -exec chmod 600 {} +
