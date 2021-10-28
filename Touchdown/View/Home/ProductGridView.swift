//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Natraj, Rohit on 10/27/21.
//

import SwiftUI

struct ProductGridView: View {
    
    var body: some View {
            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                ForEach(products) { product in
                    ProductItemView(product: product)
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
    }
}
