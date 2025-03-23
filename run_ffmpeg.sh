#!/bin/bash

# Define input and output directories
IN_DIR="FFSerial/In"
OUT_DIR="FFSerial/Out"

# Ensure directories exist
mkdir -p "$IN_DIR" "$OUT_DIR"

# Get first file in In directory
FIRST_FILE=$(find "$IN_DIR" -type f | head -n 1)

# Check if there are files to process
if [ -z "$FIRST_FILE" ]; then
    echo "⚠️ No files found in $IN_DIR. Please add files and try again."
    exit 1
fi

# Get file extension of the first file
FIRST_EXT="${FIRST_FILE##*.}"
echo "Detected input format: .$FIRST_EXT"

# Ask user for output format
read -p "Enter desired output format (e.g., mp4, mp3, avi): " OUT_EXT

# Process files one by one
for FILE in "$IN_DIR"/*; do
    [[ -f "$FILE" ]] || continue  # Skip if not a file

    # Get current file extension
    FILE_EXT="${FILE##*.}"

    # If a new file type is found, ask for output format again
    if [[ "$FILE_EXT" != "$FIRST_EXT" ]]; then
        echo "⚠️ New file format detected: .$FILE_EXT"
        read -p "Enter output format for .$FILE_EXT files: " OUT_EXT
        FIRST_EXT="$FILE_EXT"
    fi

    # Set output file name
    BASENAME=$(basename "$FILE" ".$FILE_EXT")
    OUTPUT_FILE="$OUT_DIR/$BASENAME.$OUT_EXT"

    # Convert using FFmpeg
    echo "Converting $FILE -> $OUTPUT_FILE"
    ffmpeg -i "$FILE" "$OUTPUT_FILE"
done

echo "✅ Conversion complete! Check the '$OUT_DIR' folder."
