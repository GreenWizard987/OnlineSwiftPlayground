// swift-tools-version:4.2
import PackageDescription

let dependencies:[Package.Dependency] = [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "4.0.0")
    .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.0.0"))
]

var targets:[Target] = [
    .target(name: "OnlinePlayground", dependencies: ["RxSwift", "Alamofire"]), // Link custom modules here
]

var products: [Product] = [
    .library(name: "OnlinePlayground", type: .static, targets: ["OnlinePlayground"])
]

let package = Package(
    name: "OnlinePlayground",
    products: products,
    dependencies: dependencies,
    targets: targets
)
