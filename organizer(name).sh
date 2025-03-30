#!/bin/bash

DOWNLOAD_DIR="$HOME/Downloads/VTOP"

mkdir -p "$DOWNLOAD_DIR"

for FILE in "$DOWNLOAD_DIR"/*; do
  FILENAME=$(basename "$FILE")


  KEYWORD=$(echo "$FILENAME" | grep -oE '^[A-Za-z]+' | tr '[:upper:]' '[:lower:]')


  if [[ -z "$KEYWORD" ]]; then
    KEYWORD="Miscellaneous"
  fi

  
  MATCHING_FOLDER=$(ls "$DOWNLOAD_DIR" | grep -i "$KEYWORD" | head -n 1)

  
  if [[ -n "$MATCHING_FOLDER" ]]; then
    TARGET_FOLDER="$DOWNLOAD_DIR/$MATCHING_FOLDER"
  else
    TARGET_FOLDER="$DOWNLOAD_DIR/$KEYWORD"
    mkdir -p "$TARGET_FOLDER"
  fi


  mv "$FILE" "$TARGET_FOLDER/"
done

echo "Files are now categorized into subject folders!"
