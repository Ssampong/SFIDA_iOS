//
//  HomeHeader.swift
//  sfida
//
//  Created by dgsw8th61 on 7/16/24.
//

import SwiftUI

struct HomeHeader : View {
    @Binding var selectedIndex: Int
    var body: some View {
        ZStack{
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
                        }
                            HStack(spacing: 20) {
                                Text("내 챌린지")
                                    .foregroundColor(selectedIndex == 0 ? .black : .gray)
                                    .bold()
                                    .font(.system(size: 15))
                                    .onTapGesture {
                                        selectedIndex = 0
                                    }
                                
                                Text("참여중")
                                    .foregroundColor(selectedIndex == 1 ? .black : .gray)
                                    .bold()
                                    .font(.system(size: 15))
                                    .onTapGesture {
                                        selectedIndex = 1
                                    }
                                
                                Text("성공 인증글")
                                    .foregroundColor(selectedIndex == 2 ? .black : .gray)
                                    .bold()
                                    .font(.system(size: 15))
                                    .onTapGesture {
                                        selectedIndex = 2
                                    }
                                
                                Spacer()
                            }
                        .padding(.horizontal)
                        Spacer()
                    }
                }
        }
    }
}

//#Preview {
//    HomeHeader()
//}
