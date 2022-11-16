// swift-tools-version: 5.7.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BreedFavorites",
    platforms: [ .iOS( .v16) ] ,
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BreedFavorites",
            targets: ["BreedFavorites"]),
       
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "BreedFavorites",
            dependencies: []),
        .binaryTarget(name: "BreedFavoritesFramework",
                      url: "https://github.com/DieberRoa/democatbreedsmodulefavorites/breedfavorites.zip",
                      checksum: "4fce2abf4061430c3a4b497a4898edfcdebc4d6a4ab88b05e24a29b33f40def5"),
        .testTarget(
            name: "BreedFavoritesTests",
            dependencies: ["BreedFavorites"]),
    ]
)
