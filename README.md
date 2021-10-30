# Delta Plugin Template

This repository is a template for [Delta Client](https://github.com/stackotter/delta-client) plugins.

## Building

### Prerequisites

- Xcode 13 (or later)
- [jq](https://stedolan.github.io/jq/) (install with [homebrew](https://brew.sh): `brew install jq`)

### Setup

```sh
# Clones delta-client into the current directory
# You can also edit this script to clone a specific version of delta-client that you want to develop your plugin for
sh setup.sh
```

### Build

```sh
# Build the plugin and output it into ./build
sh build.sh
```

### Build and run

```sh
# 1. Builds the plugin into ./build
# 2. Builds the version of Delta Client in ./delta-client
# 3. Runs Delta Client with `--plugins-dir ./build`
sh build-and-run.sh
```
