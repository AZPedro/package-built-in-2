// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AZPackage2",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AZPackage2",
            targets: ["AZPackage2"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/AZPedro/sample-package-bult-in.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AZPackage2",
            dependencies: [
                .product(name: "AZPackage", package: "sample-package-bult-in")
            ]),
        .testTarget(
            name: "AZPackage2Tests",
            dependencies: ["AZPackage2"]),
    ]
)
