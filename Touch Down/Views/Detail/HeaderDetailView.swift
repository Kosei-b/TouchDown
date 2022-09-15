//
//  HeaderDetailView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-15.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - Poperty
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
              .font(.largeTitle)
              .fontWeight(.black)
        }//: VStack
        .foregroundColor(.white)
    }//: Body
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
