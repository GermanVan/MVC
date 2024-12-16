import Foundation

public struct Product {
    public let name: String
}

public struct ProductGroup {
    public let produtcs: [Product]
    public let title: String
}

extension ProductGroup {
    public static func vegetables () -> ProductGroup {
        let products = [
            Product (name: "Огурцы"),
            Product (name: "Помидоры"),
            Product (name: "Капуста")
        ]
        return ProductGroup(produtcs: products, title: "Овощи")
    }
}
