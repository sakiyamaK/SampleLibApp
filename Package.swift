// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SampleLibApp",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SampleLibApp",
            targets: ["SampleLibApp"]),
    ],
    dependencies: [
      .package(url: "https://github.com/onevcat/Kingfisher", from: "7.11.0"),
    ],
    targets: [
        .target(
            name: "SampleLibApp",
            dependencies: [
              .product(name: "Kingfisher", package: "Kingfisher"),
            ]
        ),
        .testTarget(
            name: "SampleLibAppTests",
            dependencies: ["SampleLibApp"]),
    ]
)
