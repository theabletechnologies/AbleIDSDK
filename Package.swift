// swift-tools-version:5.5
import PackageDescription

// Rewritten by the release pipeline — keep each on its own line.
let version = "1.1.4"
let checksum = "35ea4879a64d605741ca8485fe6fb0fd1216eaa5bb3c249e1f1d86aa845de947"

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
