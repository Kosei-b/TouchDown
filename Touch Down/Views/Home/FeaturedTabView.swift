//
//  FeaturedTabView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-14.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView{
            ForEach(players) { item in
                FeaturedItemView(player: item)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                
            }//: ForEach
        }//: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }//: Body
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
