PLUGIN_NAME=$(cat manifest.json |jq --raw-output ".target")
swift build -c debug
rm -rf ${PLUGIN_NAME}.deltaplugin
mkdir ${PLUGIN_NAME}.deltaplugin
cp .build/debug/lib${PLUGIN_NAME}.dylib ${PLUGIN_NAME}.deltaplugin/libPlugin.dylib
cp manifest.json ${PLUGIN_NAME}.deltaplugin/
