// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "YYModel",
  platforms: [
    .macOS(.v10_11),
    .iOS(.v9),
    .tvOS(.v9),
    .watchOS(.v2)
  ],
  products: [
    .library(
      name: "YYModel",
      type: .dynamic,
      targets: ["YYModel"]
    ),
  ],
  targets: [
    .target(
      name: "YYModel",
      path: "YYModel",
      resources: [
        .process("PrivacyInfo.xcprivacy")
      ],
      publicHeadersPath: "",
      linkerSettings: [
        .linkedFramework("Foundation"),
        .linkedFramework("CoreFoundation")
      ]
    ),
  ]
)
