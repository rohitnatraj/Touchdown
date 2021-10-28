//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Natraj, Rohit on 10/27/21.
//

import SwiftUI

struct ProductGridView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                ForEach(products) { product in
                    ProductItemView(product: product)
                        .onTapGesture {
                            feedack.impactOccurred()
                            withAnimation(.easeOut) {
                                shop.selectedProduct = product
                                shop.showingProduct = true
                            }
                        }
                }
            })
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
            .environmentObject(Shop())
    }
}
