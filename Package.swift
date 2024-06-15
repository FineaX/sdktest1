// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LmSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LmSDK",
            targets: ["LmSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/CoderMJLee/MJRefresh.git", from: "3.7.1"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0"),
        .package(url: "https://github.com/jdg/MBProgressHUD.git", .upToNextMajor(from: "1.2.0")),
    ],
    targets: [
        .binaryTarget(
            name: "LmSDK",
            url: "https://github.com/FineaX/LmSDKPackage/releases/download/1.0.0/LmSDK.xcframework.zip",
            checksum: "c33300b7d21cfc3ddcc142561b7ae8bfb18d35c142fb32760f9bc139ab25eec8"
        )
    ]
)
