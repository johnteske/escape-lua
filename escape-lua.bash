#!/bin/bash

# escape quotes
# remove comments
# remove newlines

sed -e 's/"/\\&/g' "$1" | \
  sed -e 's/--.*$//g' | \
  tr -s '\n' ' '
