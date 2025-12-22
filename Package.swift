// swift-tools-version: 6.2.0
import PackageDescription

let package = Package(
    name: "BbAppContentSchema",
    defaultLocalization: "en",
    platforms: [.iOS("18.5"), .macOS("15.5"), .tvOS("18.0")],
    products: [.library(name: "BbAppContentSchema", targets: ["BbAppContentSchema"])],
    dependencies: [
        .package(url: "https://github.com/thebbapp/swift-package-bb-app-intent.git", from: "0.1.0"),
        .package(
            url: "https://github.com/thebbapp/swift-package-bb-app-author-schema.git",
            from: "0.1.0"
        ),
        .package(url: "https://github.com/thebbapp/swift-package-bb-app-task.git", from: "0.1.0"),
    ],
    targets: [
        .binaryTarget(
            name: "BbAppContentSchema",
            url:
                "https://github.com/thebbapp/swift-package-bb-app-content-schema/releases/download/v0.1.0/BbAppContentSchema.xcframework.zip",
            checksum: "3a808b5d71f571c0d1e86a237fcfc147a27b5a1066044a0e392b570ca1b00d05"
        )
    ],
    swiftLanguageModes: [.v6]
)
