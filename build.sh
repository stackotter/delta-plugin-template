#!/bin/sh

# Get the name of the target from manifest.json
PLUGIN_NAME=$(cat manifest.json | jq --raw-output ".target")

# Build using swiftpm
swift build -c debug

# Delete and recreate the output dir
rm -rf build/${PLUGIN_NAME}.deltaplugin
mkdir -p build/${PLUGIN_NAME}.deltaplugin

# Copy the dylib into the plugin
cp .build/debug/lib${PLUGIN_NAME}.dylib build/${PLUGIN_NAME}.deltaplugin/libPlugin.dylib

# Copy the manifest into the plugin
cp manifest.json build/${PLUGIN_NAME}.deltaplugin/
