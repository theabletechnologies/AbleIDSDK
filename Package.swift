// swift-tools-version:5.5
import PackageDescription

// Rewritten by the release pipeline — keep each on its own line.
let version = "1.1.5"
let checksum = "568bc8e25b1da88ce0ed082e6a73889daec5424ed85fb4035d6986609d9f9b4f"

let package = Package(
    name: "AbleIDSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AbleIDSDK", targets: ["AbleIDSDKWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/regulaforensics/FaceSDK-Swift-Package.git",
                 .exact("8.3.4727")),
        .package(url: "https://github.com/regulaforensics/FaceCoreBasic-Swift-Package.git",
                 .exact("8.3.2550"))
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
