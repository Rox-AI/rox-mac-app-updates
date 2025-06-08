#!/bin/bash

# 1. Run the Sparkle binary
./generate_appcast .

# 2. Patch URLs in the appcast XML (assumes macOS `sed`)
sed -i '' 's|\(url="[^"]*\.zip\)\(".*\)|\1?raw=true\2|' appcast.xml
