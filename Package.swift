// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIKitJapaneseTypealias",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "UIKitJapaneseTypealias",
            targets: ["UIKitJapaneseTypealias", "UIKitJapaneseTypealiasObjc"]),
    ],
    dependencies: [
        .package(url: "https://github.com/p-x9/Foundation-Japanese-Typealias.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "UIKitJapaneseTypealias",
            dependencies: [
                .product(name: "FoundationJapaneseTypealias", package: "Foundation-Japanese-Typealias")
            ],
            path: "Sources/UIKitJapaneseTypealias"),
        .target(
            name: "UIKitJapaneseTypealiasObjc",
            dependencies: ["UIKitJapaneseTypealias"],
            path: "Sources/UIKitJapaneseTypealiasObjc",
            publicHeadersPath: ""),
        .testTarget(
            name: "UIKitJapaneseTypealiasTests",
            dependencies: ["UIKitJapaneseTypealias"]),
    ]
)
