// Package.swift
name: "NCDesignSystem",
platforms: [
    .iOS(.v17),
    .macOS(.v14)
],
products: [
    .library(
        name: "NCDesignSystem",
        targets: ["NCDesignSystem"]
    )
],
targets: [
    .target(
        name: "NCDesignSystem",
        dependencies: []
    ),
    .testTarget(
        name: "NCDesignSystemTests",
        dependencies: ["NCDesignSystem"]
    )
]
