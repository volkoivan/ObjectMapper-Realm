// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ObjectMapper+Realm",
    platforms: [
        .iOS(.v12),
        .tvOS(.v10),
        .macOS(.v10_10),
    ],
    products: [
        .library(
            name: "ObjectMapper+Realm",
            targets: ["ObjectMapper+Realm"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-swift", .upToNextMajor(from: "10.50.0")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper", .upToNextMinor(from: "4.2.0")),
    ],
    targets: [
        .target(
            name: "ObjectMapper+Realm",
            dependencies: [
                "RealmSwift",
                "ObjectMapper"
            ],
            path: "ObjectMapper+Realm",
            exclude: [
                "ObjectMapper+RealmTest"
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
let version = Version(0, 7, 0)
