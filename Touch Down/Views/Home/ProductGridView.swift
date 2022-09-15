//
//  ProductGridView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-14.
//

import SwiftUI

struct ProductGridView: View {
    //MARK: - Property
    @EnvironmentObject var shop: Shop
    //MARK: - Body
    var body: some View {
        LazyVGrid(columns: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
            ForEach(products){ item in
                ProductItemView(product: item)
                    .onTapGesture {
                        feedback.impactOccurred()
                        withAnimation(.easeOut) {
                            shop.selectedProduct = item
                            shop.showingProduct = true
                        }//: WithAnimation
                    }
            }//: ForEach
        }//: lazyVGrid
        .padding()
    }
}

//MARK: - PreView
struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .environmentObject(Shop())

    }
}
