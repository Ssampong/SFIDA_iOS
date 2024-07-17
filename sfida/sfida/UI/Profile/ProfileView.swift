//
//  ProfileView.swift
//  sfida
//
//  Created by 이다경 on 7/17/24.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.BackgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    VStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(height: 290)
                    }
                    .padding(.top, 100)
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Image("testprofile")
                            Spacer()
                            NavigationLink(destination: ProfileUpdateView()) {
                                Image(systemName: "pencil")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 25)
                            }
                            .foregroundColor(.black)
                        }
                        .padding(.bottom, 30)
                        
                        Text("닉네임")
                            .font(.system(size: 30, weight: .black))
                        Text("아이디")
                            .font(.system(size: 18))
                    }
                    .padding(.horizontal, 35)
                }
                .padding(.bottom, 20)
                NavigationLink(destination: ShopView(selectedIndex: 0)) {
                    ZStack {
                        HStack {
                            Text("포인트 교환하러가기")
                            Image(systemName: "chevron.forward")
                        }
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.leading, 230)
                        .padding(.trailing)
                        .padding(.vertical, 22)
                        .background(.white)
                        .cornerRadius(10)
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(height: 28)
                                Text("P")
                                    .font(.system(size: 17, weight: .heavy))
                                    .foregroundColor(.white)
                            }
                            Text("777")
                                .font(.system(size: 17, weight: .heavy))
                            Spacer()
                        }
                        .padding(.leading, 40)
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ProfileView()
}
