// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "OpenAIRealtime",
	platforms: [
		.iOS(.v17),
		.tvOS(.v17),
		.macOS(.v14),
		.watchOS(.v10),
		.visionOS(.v1),
		.macCatalyst(.v17),
	],
	products: [
		.library(name: "OpenAIRealtime", type: .static, targets: ["OpenAIRealtime"]),
	],
	dependencies: [
		.package(url: "https://github.com/stasel/WebRTC.git", .upToNextMajor(from: "136.0.0")),
	],
	targets: [
		.target(name: "OpenAIRealtime", dependencies: ["WebRTC"], path: "./src"),
	]
)
