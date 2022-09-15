//
//  QuantityFavouriteDetailView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-15.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //MARK: - Property
    @State private var counter: Int = 0
    @State private var isFavoriteActive: Bool = false
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // MinusButton
            Button {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            // Text (Counter(Int))
            Text("\(counter)")
              .fontWeight(.semibold)
              .frame(minWidth: 36)
            
            // PlusButton
            Button {
                if counter < 100 {
                    counter += 1
                    feedback.impactOccurred()
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            //: FavoriteButton
            Button {
                isFavoriteActive.toggle()
                feedback.impactOccurred()
            } label: {
                
                if isFavoriteActive {
                    withAnimation(.easeIn) {
                        Image(systemName: "heart.circle")
                          .foregroundColor(.pink)
                    }//: Animation
                } else {
                    withAnimation(.easeIn) {
                        Image(systemName: "heart.circle")
                          .foregroundColor(.gray)
                   }
                }
                
            }//: FavoriteButton
        }//: HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }//: Body
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
