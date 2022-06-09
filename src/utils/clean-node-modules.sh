#!/bin/bash

# This script will clean all node_modules folders recursively from ~/workspace

find ~/workspace -name "node_modules" -type d -prune -exec rm -rf '{}' +
