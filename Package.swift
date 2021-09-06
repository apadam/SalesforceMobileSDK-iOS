let package = Package(
    name: "SalesforceMobileSDK",
    platforms: [
      .iOS(.v13)
    ],
    products: [
        .library(name: "SalesforceMobileSDK", targets: ["SalesforceMobileSDK"]),
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
