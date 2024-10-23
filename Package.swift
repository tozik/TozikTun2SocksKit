// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  platforms: [.iOS(.v12), .macOS(.v12), .macCatalyst(.v13)],
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit"]
    )
  ],
  targets: [
    .target(
        name: "Tun2SocksKit",
        dependencies: ["Tun2SocksKitC", "HevSocks5Tunnel"]
    ),
    .target(
        name: "Tun2SocksKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        url: "https://github.com/tozik/TozikTun2SocksKit/releases/download/2.6.8/HevSocks5Tunnel.xcframework.zip",
        checksum: "0525c180565a40c8a2b0a5880201335da311bdc08b4d7c2d838047b786683a92"
    )
  ]
)
