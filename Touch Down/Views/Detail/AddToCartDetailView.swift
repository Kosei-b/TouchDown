//
//  AddToCartDetailView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-15.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - Porperty
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
              .font(.system(.title2, design: .rounded))
              .fontWeight(.bold)
              .foregroundColor(.white)
            Spacer()
        }//: Button
        .padding(15)
        .background(
          Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
          )
        )
        .clipShape(Capsule())
        
    }//: Body
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
