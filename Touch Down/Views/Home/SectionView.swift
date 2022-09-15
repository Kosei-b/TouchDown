//
//  SectionView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-14.
//

import SwiftUI

struct SectionView: View {
    //MARK: - Property
    @State var rotateClockwise: Bool
    
    //MARK: - Body
    var body: some View {
        VStack (spacing: 0){
            
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
            
        }//: VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }//: Body
}

//MARK: - PreView
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
