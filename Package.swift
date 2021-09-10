// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SalesforceMobileSDK-iOS",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SalesforceMobileSDK-iOS",
            targets: ["SalesforceSDKCore-iOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SalesforceSDKCore-iOS",
            dependencies: ["SalesforceSDKCommon",
                           "SalesforceAnalytics",
                           "SmartStore",
                           "MobileSync"],
            path: "libs"),
        .target(
            name: "SalesforceSDKCommon",
            dependencies: [],
            path: "libs"),
        .target(
            name: "SalesforceAnalytics",
            dependencies: [],
            path: "libs"),
        .target(
            name: "SmartStore",
            dependencies: [],
            path: "libs"),
        .target(
            name: "MobileSync",
            dependencies: [],
            path: "libs"),
    ]
)
