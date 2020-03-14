// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Shout",
    products: [
        .library(name: "Shout", targets: ["Shout"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/BlueSocket", from: "0.12.68"),
    ],
    targets: [
        .target(name: "Bindings", dependencies: ["Socket"]),
        .target(name: "Shout", dependencies: ["Bindings", "Socket"]),
        .testTarget(name: "ShoutTests", dependencies: ["Shout"]),
    ]
)
