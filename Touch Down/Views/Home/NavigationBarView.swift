//
//  NavigationBarView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-14.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - Property
    
    @State private var isAnimating: Bool = false
    
    
    //MARK: - Body
    var body: some View {
        HStack {
            //: MagnifyGlassButton
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }//: Mg Button
            
            Spacer()
            
            LogoView()
                .opacity(isAnimating ? 1 : 0 )
                .offset(x: 0, y: isAnimating ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimating.toggle()
                    }
                }//:OnAppear
            
            Spacer()
            
            //: CartButton
            Button {
                
            } label: {
                ZStack{
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    Circle()
                      .fill(Color.red)
                      .frame(width: 14, height: 14, alignment: .center)
                      .offset(x: 13, y: -10)
                }//: ZStuck
            }//: CartButton
        }//: HStack
    }
}

//MARK: - PreView
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
