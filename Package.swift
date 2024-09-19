// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftGraphQl",
    products: [
        .executable(
            name: "graphql-cli",
            targets: ["GraphQlCLI"]),
        .library(
            name: "SwiftGraphQl",
            targets: ["SwiftGraphQl"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ga-reth/swift-parse", Package.Dependency.Requirement.upToNextMinor(from: "1.0.0")),
        // Uncomment for local development
//      .package(path: "../swift-parse")
    ],
    targets: [
        .target(
            name: "GraphQlCLI",
            dependencies: ["SwiftGraphQl"]),
        .target(
            name: "SwiftGraphQl",
            dependencies: ["SwiftParse"]),
        .testTarget(
            name: "SwiftGraphQlTests",
            dependencies: ["SwiftGraphQl"]),
    ])
