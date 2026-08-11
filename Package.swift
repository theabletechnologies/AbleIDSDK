// swift-tools-version:5.5
import PackageDescription

// Rewritten by the release pipeline — keep each on its own line.
let version = "1.1.1"
let checksum = "1173d8a46fb502a5e3eb4ddfbb9f51ecb01c9938b02059fbaf8bf9a3aeb3de3f"

let package = Package(
    name: "AbleIDSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AbleIDSDK", targets: ["AbleIDSDKWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/regulaforensics/FaceSDK-Swift-Package.git",
                 .upToNextMinor(from: "8.2.4157")),
        .package(url: "https://github.com/regulaforensics/FaceCoreBasic-Swift-Package.git",
                 .upToNextMinor(from: "8.2.2127"))
    ],
    targets: [
        .binaryTarget(
            name: "AbleIDSDK",
            url: "https://github.com/theabletechnologies/AbleIDSDK/releases/download/\(version)/AbleIDSDK.zip",
            checksum: checksum
        ),
        .target(
            name: "AbleIDSDKWrapper",
            dependencies: [
                .target(name: "AbleIDSDK"),
                .product(name: "FaceSDK", package: "FaceSDK-Swift-Package"),
                .product(name: "FaceCoreBasic", package: "FaceCoreBasic-Swift-Package")
            ]
        )
    ]
)
