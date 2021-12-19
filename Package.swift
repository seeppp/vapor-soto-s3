// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "vapor-soto-s3",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        .library(
            name: "SotoS3Kit",
            targets: ["SotoS3Kit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/soto-project/soto.git", from: "5.0.0"),
    ],
    targets: [
        .target(name: "SotoS3Kit", dependencies: [
            .product(name: "Vapor", package: "vapor"),
            .product(name: "SotoS3", package: "soto"),
        ]),
        .testTarget(name: "SotoS3KitTests", dependencies: [
            .target(name: "SotoS3Kit")
        ]),
    ]
)
