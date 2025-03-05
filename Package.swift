// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmVersionStr = "10.54.1"
let objectMapperVersionStr = "4.2.0"

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
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .exact(Version(objectMapperVersionStr)!)),
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
