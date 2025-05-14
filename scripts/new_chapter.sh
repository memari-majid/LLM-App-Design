#!/bin/bash

# Check if a chapter name is provided
if [ -z "$1" ]; then
  echo "Usage: ./scripts/new_chapter.sh chapter-name 'Chapter Title'"
  exit 1
fi

# Check if chapter title is provided
if [ -z "$2" ]; then
  echo "Usage: ./scripts/new_chapter.sh chapter-name 'Chapter Title'"
  exit 1
fi

# Create the chapters directory if it doesn't exist
mkdir -p chapters

# Set variables
CHAPTER_FILE="chapters/$1.md"
CHAPTER_TITLE="$2"
CURRENT_DATE=$(date +"%Y-%m-%d")
CHAPTER_NUM=$(echo "$1" | grep -o '^[0-9]*')

# Create the chapter file
cat > "$CHAPTER_FILE" << EOF
---
layout: page
title: $CHAPTER_TITLE
parent: Chapters
nav_order: ${CHAPTER_NUM:-99}
permalink: /chapters/$1/
date: $CURRENT_DATE
---

# $CHAPTER_TITLE

*Content for this chapter...*

## Section 1

## Section 2

## Section 3

---

[Previous Chapter](previous-chapter-link) | [Next Chapter](next-chapter-link)
EOF

echo "Created new chapter: $CHAPTER_FILE" 