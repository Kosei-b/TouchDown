//
//  RatingView.swift
//  Touchdown
//
//  Created by Kosei Ban on 2022-09-15.
//

import SwiftUI

struct RatingView: View {
    //MARK: - Property
    private static let MaxRating: Float = 5
    private static let COLOR = Color.yellow
    
    let Rating: Float
    private let fullCount: Int
    private let emptyCount: Int
    private let halfFullCount: Int
    
    init(Rating: Float) {
        self.Rating = Rating
        fullCount = Int(Rating)
        emptyCount = Int(RatingView.MaxRating - Rating)
        halfFullCount = (Float(fullCount + emptyCount) < RatingView.MaxRating) ? 1 : 0
    }
    
      private var fullStar: some View {
        Image(systemName: "star.fill").foregroundColor(RatingView.COLOR)
      }

      private var halfFullStar: some View {
        Image(systemName: "star.lefthalf.fill").foregroundColor(RatingView.COLOR)
      }

      private var emptyStar: some View {
        Image(systemName: "star").foregroundColor(RatingView.COLOR)
      }
    
    
    //MARK: - Body
    var body: some View {
        HStack(spacing: 5) {
             ForEach(0..<fullCount) { _ in
                self.fullStar
              }
              ForEach(0..<halfFullCount) { _ in
                self.halfFullStar
              }
              ForEach(0..<emptyCount) { _ in
                self.emptyStar
              }
        }//:Hstack
    }//: Body
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(Rating: 2.5)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

