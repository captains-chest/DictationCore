// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "DictationCore",
    platforms: [
        .macOS(.v15),
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "DictationCore",
            targets: ["DictationCore"]
        )
    ],
    targets: [
        .target(
            name: "DictationCore"
        ),
        .testTarget(
            name: "DictationCoreTests",
            dependencies: ["DictationCore"]
        )
    ]
)
