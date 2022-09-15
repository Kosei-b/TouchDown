//
//  Shop.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-14.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
