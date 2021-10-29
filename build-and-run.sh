#!/bin/sh

# Build
sh ./build.sh

# Run delta client and override the plugin directory path
swift bundler run -d delta-client -c release -o delta-client
