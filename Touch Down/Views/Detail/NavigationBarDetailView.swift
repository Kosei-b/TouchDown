//
//  NavigationBarDetailView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-15.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: - Property
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        HStack {
            
            //: BackButton
            Button {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                  .font(.title)
                  .foregroundColor(.white)
            }//:BackButton
            
            Spacer()
            
            //: CartButton
            Button {
            } label: {
                Image(systemName: "cart")
                  .font(.title)
                  .foregroundColor(.white)
            }//CartButton
        }//: HStack
    }//: Body
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
