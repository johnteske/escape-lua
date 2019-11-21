#!/bin/bash

# escape quotes
# remove comments
# remove newlines

# error if no filename provided
: ${1?"Usage: $0 filename"}

sed -e 's/"/\\&/g' "$1" | \
  sed -e 's/--.*$//g' | \
  tr -s '\n' ' '
