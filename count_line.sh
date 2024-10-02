#!/bin/bash

# Initialize total count of </TextLine> elements without the test directory
total_count=0

# Loop through each .xml file in the specified path excluding data/test/*.xml
for file in data/*/*.xml; do
    # Skip files in the data/test/ directory
    if [[ "$file" == data/test/* ]]; then
        continue
    fi
    
    # Check if the file exists to avoid errors
    if [[ -f "$file" ]]; then
        # Count the occurrences of </TextLine> in the current file
        count=$(grep -o "</TextLine>" "$file" | wc -l)
        
        # Print the result for the current file
        echo "$file: $count occurrences of </TextLine>"
        
        # Add to the total count
        total_count=$((total_count + count))
    fi
done

# Print the total count
echo "Total: $total_count occurrences of </TextLine>"

