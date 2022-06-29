// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "swift-baz",
    products: 
    [
        .library(name: "Baz", targets: ["Baz"]),
    ],
    dependencies: 
    [
        .package(url: "https://github.com/swift-biome/swift-bar", exact: "0.1.0"),
    ],
    targets: 
    [
        .target(name: "Baz", 
            dependencies: 
            [
                .product(name: "Bar", package: "swift-bar")
            ], 
            path: "sources"),
    ]
)
