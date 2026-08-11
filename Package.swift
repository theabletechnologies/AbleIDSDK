// swift-tools-version:5.5
import PackageDescription

// Rewritten by the release pipeline — keep each on its own line.
let version = "1.1.6"
let checksum = "1fc40514a2823481464b729d697534daafd638763d0d7c79f13dfbb6c7bc7142"

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
