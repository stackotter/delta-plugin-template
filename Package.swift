// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "HelloWorldPlugin",
  platforms: [.macOS(.v11)],
  products: [
    .library(name: "HelloWorldPlugin", type: .dynamic, targets: ["HelloWorldPlugin"]),
  ],
  dependencies: [
    .package(name: "DeltaClient", path: "./delta-client"),
  ],
  targets: [
    .target(
      name: "HelloWorldPlugin",
      dependencies: [
        .product(name: "DeltaCore", package: "DeltaClient")
      ]),
  ]
)
