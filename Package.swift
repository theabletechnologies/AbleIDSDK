// swift-tools-version:5.9
import PackageDescription

// Rewritten by the release pipeline — keep each on its own line.
let version = "1.2.0"
let checksum = "8ac2ccd56d1dab6ee5fa8ec7585beb154b696475a9ba930ef455ceebdd21e308"

let package = Package(
    name: "AbleIDSDK",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "AbleIDSDK", targets: ["AbleIDSDKWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/regulaforensics/FaceSDK-Swift-Package.git",
                 exact: "8.4.5062"),
        .package(url: "https://github.com/regulaforensics/FaceCoreBasic-Swift-Package.git",
                 exact: "8.4.2746")
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
