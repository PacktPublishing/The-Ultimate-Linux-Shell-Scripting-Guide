#!/bin/bash

temp_file=$(mktemp)

echo "This file contains sensitive data." > "$temp_file"

