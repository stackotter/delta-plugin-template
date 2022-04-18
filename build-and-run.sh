#!/bin/sh

# Build
sh ./build.sh

# Run delta client and override the plugin directory path
PLUGINS_DIR="$PWD/build"
cd delta-client
swift bundler bundle -c release -o .
./DeltaClient.app/Contents/MacOS/DeltaClient --plugins-dir $PLUGINS_DIR
