#!/bin/bash

trap 'rm -f "$temp_file"' EXIT

temp_file=$(mktemp)

echo "This file contains sensitive data." > "$temp_file"

ls -l /tmp/tmp*

cat "$temp_file"

