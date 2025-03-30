#!/bin/bash

DOWNLOAD_DIR="$HOME/Downloads/VTOP"

mkdir -p "$DOWNLOAD_DIR/Documents"
mkdir -p "$DOWNLOAD_DIR/Presentations"
mkdir -p "$DOWNLOAD_DIR/PDFs"
mkdir -p "$DOWNLOAD_DIR/Miscellaneous"

for FILE in "$DOWNLOAD_DIR"/*; do
  if [[ $FILE == *.doc ]] || [[ $FILE == *.docx ]] || [[ $FILE == *.txt ]]; then
    mv "$FILE" "$DOWNLOAD_DIR/Documents/"
  elif [[ $FILE == *.ppt ]] || [[ $FILE == *.pptx ]]; then
    mv "$FILE" "$DOWNLOAD_DIR/Presentations/"
  elif [[ $FILE == *.pdf ]]; then
    mv "$FILE" "$DOWNLOAD_DIR/PDFs/"
  else
    mv "$FILE" "$DOWNLOAD_DIR/Miscellaneous/"
  fi
done

echo "Files have been organized!"
