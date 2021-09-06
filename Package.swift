// swift-tools-version:5.0
let package = Package(
    name: "SalesforceMobileSDK-iOS",
    platforms: [
      .iOS(.v13)
    ],
    products: [
        .library(name: "SalesforceMobileSDK-iOS", targets: ["SalesforceMobileSDK-iOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apadam/SalesforceMobileSDK-iOS.git", .exact("9.1.1")),
    ],
    targets: [
        .target(
            name: "SalesforceMobileSDK", 
            path: "SalesforceMobileSDK.xcworkspace"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
