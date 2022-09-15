//
//  RatingsSizesDetailView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-15.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - Property
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    //MARK: - Body
    var body: some View {
        HStack (alignment: .top, spacing: 3) {
            // RATINGS
            VStack(alignment: .leading, spacing: 3) {
                //: Text
                Text("Ratings")
                  .font(.footnote)
                  .fontWeight(.semibold)
                  .foregroundColor(colorGray)
                
                //: RatingStar
                HStack(alignment: .center, spacing: 3) {
                    RatingView(Rating: 4.5)
                }//: HStack
            }//: VStack(RATINGS)
            
            Spacer()
            
            // SIZE
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                  .font(.footnote)
                  .fontWeight(.semibold)
                  .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button {
                            
                        } label: {
                            Text(size)
                              .font(.footnote)
                              .fontWeight(.heavy)
                              .foregroundColor(colorGray)
                              .frame(width: 28, height: 28, alignment: .center)
                              .background(Color.white.cornerRadius(5))
                              .background(
                                RoundedRectangle(cornerRadius: 5)
                                  .stroke(colorGray, lineWidth: 2)
                              )
                        }
                    }
                }//: HStack
                
            }//: VStack(Size)
            
            
        }//: HStack
    }//: Body
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
