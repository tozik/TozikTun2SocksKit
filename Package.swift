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
        url: "https://github.com/tozik/Tun2SocksKit/releases/download/2.6.3/HevSocks5Tunnel.xcframework.zip",
        checksum: "7d24f1216feb64f43112c89be0a70504df52ce91a028e0014316d33cf6720971"
    )
  ]
)
