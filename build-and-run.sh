#!/bin/sh

# Build
sh ./build.sh

# Run delta client and override the plugin directory path
swift bundler build -d delta-client -c release -o delta-client
./delta-client/DeltaClient.app/Contents/MacOS/DeltaClient --plugins-dir ./build
