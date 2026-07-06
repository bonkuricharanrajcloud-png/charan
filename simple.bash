#!/bin/bash

read -p "Enter the file name: " file

if [ -f "$file" ]

then

total_lines=$(wc -l < "$file")

if [ "$total_lines" -ge 3 ]

then

head -n -3 "$file" > temp_file

mv temp_file "$file"

echo "Last 3 lines deleted successfully."

else

echo "The file has less than 3 lines."

fi

else

echo "File does not exist."

fi
