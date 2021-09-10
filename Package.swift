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
            path: "libs",
            exclude: ["SalesforceSDKCore/SalesforceSDKCoreTestApp/en.lproj/InfoPlist.strings",
                      "SalesforceSDKCore/SalesforceSDKCoreTestApp/Base.lproj/Main_iPad.storyboard"]),
        .target(
            name: "SalesforceSDKCommon",
            dependencies: [],
            path: "libs",
            exclude: ["SalesforceSDKCommon/SalesforceSDKCommonTestApp/Base.lproj/Main.storyboard",
                      "SalesforceSDKCommon/SalesforceSDKCommonTestApp/Assets.xcassets",
                      "SalesforceSDKCommon/SalesforceSDKCommonTestApp/Base.lproj/LaunchScreen.storyboard"]),
        .target(
            name: "SalesforceAnalytics",
            dependencies: [],
            path: "libs",
            exclude: ["SalesforceAnalytics/SalesforceAnalyticsTestApp/en.lproj/InfoPlist.strings",
                      "SalesforceAnalytics/SalesforceAnalyticsTestApp/Base.lproj/Main_iPad.storyboardSalesforceAnalytics/SalesforceAnalyticsTestApp/Base.lproj/Main_iPad.storyboard",
                      "SalesforceAnalytics/SalesforceAnalyticsTestApp/Assets.xcassets",
                      "SalesforceAnalytics/SalesforceAnalyticsTestApp/Base.lproj/Main_iPhone.storyboard"]),
        .target(
            name: "SmartStore",
            dependencies: [],
            path: "libs",
            exclude: ["SmartStore/SmartStoreTests/en.lproj/InfoPlist.strings",
                      "SmartStore/SmartStoreTestApp/Base.lproj/Main.storyboard",
                      "SmartStore/SmartStoreTestApp/Assets.xcassets",
                      "SmartStore/SmartStoreTestApp/Base.lproj/LaunchScreen.storyboard"]),
        .target(
            name: "MobileSync",
            dependencies: [],
            path: "libs",
            exclude: ["MobileSync/MobileSyncTests/en.lproj/InfoPlist.strings",
                      "MobileSync/MobileSyncTestApp/Base.lproj/Main.storyboard",
                      "MobileSync/MobileSyncTestApp/Assets.xcassets",
                      "MobileSync/MobileSyncTestApp/Base.lproj/LaunchScreen.storyboard"])
    ]
)
