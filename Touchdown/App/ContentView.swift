//
//  ContentView.swift
//  Touchdown
//
//  Created by Natraj, Rohit on 10/27/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05),
                            radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        ProductGridView()
                            .padding(15)
                        
                        TitleView(title: "Brand")
                        
                        BrandGridView()
                            .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }
            }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
            .environmentObject(Shop())
    }
}
