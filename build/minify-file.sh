#!/bin/bash
cat "$1" | sed -e 's/^[[:space:]]*/ /' -e 's/[[:space:]]+$/ /' | tr -d '\n'
