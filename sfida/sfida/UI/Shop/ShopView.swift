//
//  ShopView.swift
//  sfida
//
//  Created by dgsw8th61 on 7/17/24.
//

import SwiftUI

struct ShopView: View {
    @State var selectedIndex: Int
    let columns = [GridItem(.fixed(180)),
                   GridItem(.fixed(180))]
    var body: some View {
        ZStack{
            Color.BackgroundColor.edgesIgnoringSafeArea(.all)
            VStack{
                Rectangle()
                    .frame(minWidth: 100)
                    .frame(height: 98)
                    .foregroundColor(.white)
                    .overlay{
                        VStack{
                            HStack{
                                Image("SFIDA")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:64,height:16)
                                    .padding()
                                
                                Spacer()
                                HStack(spacing: 10){
                                    Circle()
                                        .foregroundColor(Color.Main)
                                        .frame(width: 20,height: 20)
                                        .overlay{
                                            Text("P")
                                                .foregroundStyle(.white)
                                                .bold()
                                                .font(.system(size: 12))
                                        }
                                    
                                    Text("777")
                                        .foregroundStyle(Color.Main)
                                        .font(.system(size: 12, weight: .heavy))
                                }
                                .padding(.horizontal,16)
                            }
                            HStack(spacing: 20) {
                                Text("보관함")
                                    .foregroundColor(selectedIndex == 0 ? .black : .gray)
                                    .bold()
                                    .font(.system(size: 15))
                                    .onTapGesture {
                                        selectedIndex = 0
                                    }
                                
                                Text("상점")
                                    .foregroundColor(selectedIndex == 1 ? .black : .gray)
                                    .bold()
                                    .font(.system(size: 15))
                                    .onTapGesture {
                                        selectedIndex = 1
                                    }
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                            Spacer()
                        }
                        .background(Color.white)
                    }
                ScrollView(showsIndicators: false){
                    LazyVGrid(columns: columns) {
                        ForEach((0..<1), id: \.self) { count in
                            NavigationLink {
                                if selectedIndex == 1{
                                    ShopDetailView(type: .used)
                                }else{
                                    ProductDetailView()
                                }
                            } label: {
                                if selectedIndex == 1{
                                    ProductCell(type: .used)
                                        .padding(5)
                                }else{
                                    ProductCell(type: .base)
                                        .padding(5)
                                }
                                
                            }
                        }
                    }
                }
                Spacer()
            }//vstack
        }
    }
}

#Preview {
    ShopView(selectedIndex: 0)
}
