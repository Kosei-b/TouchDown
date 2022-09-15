//
//  FeaturedItemView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-14.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - Property
    let player: Player
    
    //MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - PreView
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
