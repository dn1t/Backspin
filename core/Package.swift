// swift-tools-version: 6.4
import PackageDescription

let package = Package(
  name: "BackspinCore",
  platforms: [
    .iOS(.v18),
    .macOS(.v15),
  ],
  products: [
    .library(
      name: "BackspinCore",
      targets: ["BackspinCore"]
    )
  ],
  targets: [
    .target(
      name: "BackspinCore",
      swiftSettings: [
        .enableUpcomingFeature("ApproachableConcurrency")
      ],
    ),
    .testTarget(
      name: "BackspinCoreTests",
      dependencies: ["BackspinCore"],
      swiftSettings: [
        .enableUpcomingFeature("ApproachableConcurrency")
      ],
    ),
  ]
)
