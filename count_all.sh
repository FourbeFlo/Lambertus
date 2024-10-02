#!/bin/bash

# Initialize overall totals
overall_total_lines=0
overall_total_textline=0

# Loop through each directory in data/*
for dir in data/*/; do
    # The following line is commented out to include the data/test/ directory
    # if [[ "$dir" == "data/test/" ]]; then
    #     continue
    # fi

    # Initialize directory totals
    dir_total_lines=0
    dir_total_textline=0

    # Loop through each .xml file in the current directory
    for file in "$dir"*.xml; do
        # Check if the file exists to avoid errors
        if [[ -f "$file" ]]; then
            # Count the occurrences of </TextLine> in the current file
            textline_count=$(grep -o "</TextLine>" "$file" | wc -l)

            # Get the line count for the current file
            line_count=$(wc -l < "$file")

            # Print the result for the current file
            echo "$file: $line_count lines, $textline_count occurrences of </TextLine>"

            # Add to the directory totals
            dir_total_lines=$((dir_total_lines + line_count))
            dir_total_textline=$((dir_total_textline + textline_count))
        fi
    done

    # Print the totals for the current directory
    echo "Directory $dir: $dir_total_lines lines, $dir_total_textline occurrences of </TextLine>"

    # Add to the overall totals
    overall_total_lines=$((overall_total_lines + dir_total_lines))
    overall_total_textline=$((overall_total_textline + dir_total_textline))
done

# Print the overall totals
echo "Overall: $overall_total_lines lines, $overall_total_textline occurrences of </TextLine>"
