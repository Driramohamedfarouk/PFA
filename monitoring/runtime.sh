#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide the name/path of the script to measure."
  exit 1
fi

SCRIPT_PATH="$1"
shift

START_TIME=$(date +%s.%N)

./"$SCRIPT_PATH" "$@"

END_TIME=$(date +%s.%N)

RUNTIME=$(echo "$END_TIME - $START_TIME" | bc)

echo "The script took $RUNTIME seconds to run."

