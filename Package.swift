// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Yebisw",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Yebisw",
            targets: ["Yebisw"]),
        ],
    dependencies: [
        .package(url: "https://github.com/jpsim/SourceKitten.git", from: "0.21.3"),
        .package(url: "https://github.com/kylef/Commander.git", from: "0.8.0")
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
//         Targets are the basic building blocks of a package. A target can define a module or a test suite.
//         Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "yebiswgen",
            dependencies: ["Commander"],
            path: "Sources/yebiswgen"),
        .target(
            name: "YebiswGenCore",
            dependencies: ["Yebisw", "SourceKittenFramework"],
            path: "Sources/YebiswGenCore"),
        .target(name: "Yebisw",
                path: "Sources/Yebisw"),
        .testTarget(
            name: "YebiswTests",
            dependencies: ["Yebisw"],
            path: "Tests"),
        ]
)
