//
//  BrandGridView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-14.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                ForEach(brands) { item in
                    BrandItemView(brand: item)
                }//: ForEach
            }//: LazyHGrid
            .frame(height: 200)
            .padding(15)
        }//: ScrollView
    }//: Body
}

//MARK: - PreView
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
    }
}
