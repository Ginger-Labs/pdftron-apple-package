// swift-tools-version:5.3

import PackageDescription

// Ginger Labs fork: vends PDFNet without Tools. Tools' +load methods call into UIKit, which can
// deadlock Notability's unit test host on launch, and Notability doesn't use Tools.
let package = Package(
    name: "PDFTron",
    products: [
        .library(
            name: "PDFNet",
            targets: ["PDFNet"]),
    ],
    targets: [
        .binaryTarget(
            name: "PDFNet",
            url: "https://www.pdftron.com/downloads/ios/packages/12.0.0-30566/PDFNet.xcframework.zip",
            checksum: "768391530d6609879348706c684b68a704a013b57d99f3dd154fa2f9373387d6"),
    ]
)
