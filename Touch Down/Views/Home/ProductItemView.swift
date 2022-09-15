//
//  ProductItemView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-14.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - Property
    let product: Product
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
          // PHOTO
          ZStack {
            Image(product.image)
              .resizable()
              .scaledToFit()
              .padding(10)
          } //: ZSTACK
          .background(Color(red: product.red, green: product.green, blue: product.blue))
          .cornerRadius(12)
          
          // NAME
          Text(product.name)
            .font(.title3)
            .fontWeight(.black)
          
          // PRICE
          Text(product.formattedPrice)
            .fontWeight(.semibold)
            .foregroundColor(.gray)
        }) //: VSTACK
    }
}

//MARK: - PreView
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[2])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
        
        
    }
}
