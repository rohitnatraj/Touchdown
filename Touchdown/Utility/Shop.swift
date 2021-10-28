//
//  Shop.swift
//  Touchdown
//
//  Created by Natraj, Rohit on 10/27/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
