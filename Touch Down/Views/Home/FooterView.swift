//
//  FooterView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-14.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
              .foregroundColor(.gray)
              .multilineTextAlignment(.center)
              .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Kose-b\nAll right reserved")
              .font(.footnote)
              .fontWeight(.bold)
              .foregroundColor(.gray)
              .multilineTextAlignment(.center)
              .layoutPriority(1)
            
        }//: Vstack
        .padding(10)
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
