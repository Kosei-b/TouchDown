//
//  ContentView.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-14.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Property
    @EnvironmentObject var shop: Shop

    //MARK: - Body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                
                VStack(spacing: 0) {
                    //: NavigationBarView
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical ,showsIndicators: false) {
                        
                        VStack(spacing: 0) {
                            //:FeaturedTabView--
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                                .padding(.vertical, 20)
                            //: CategoryGridView
                            CategoryGridView()
                            
                            //: TitleView(--Helmets--)
                            TitleView(title: "Helmets")
                            
                            //: ProductGridView
                            ProductGridView()
                            
                            //: TitleView(--Brands--)
                            TitleView(title: "Brands")
                            //: BrandGridView
                            BrandGridView()
                            
                            Spacer()
                            //: FooterView
                            FooterView()
                                .padding(.horizontal)
                        }//: Vstack
                    }//: ScrollView
                }//: VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                //: ProductDetailView
                ProductDetailView()
            }//: If&Else
        
        }//:ZStack
        .ignoresSafeArea(.all, edges: .top)
    }//: Body
}

//MARK: - PreView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
        
    }
}
