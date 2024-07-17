//
//  ProfileUpdateView.swift
//  sfida
//
//  Created by 이다경 on 7/17/24.
//

import Foundation
import SwiftUI

struct ProfileUpdateView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var Nicname: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Image("testprofile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                    .padding(.vertical, 45)
                Spacer()
            }
            Text("닉네임")
                .foregroundStyle(Color.gray1)
                .font(.system(size: 15))
                .padding(.leading, 30)
                .padding(.bottom)
            TextField("",text: $Nicname)
                .font(.system(size: 20, weight: .semibold))
                .padding(.leading, 35)
                .overlay(
                    Rectangle()
                        .frame(width: 377, height: 1)
                        .padding(.top, 50)
                )
        }
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden, for: .tabBar)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 15,height: 27)
                        .foregroundColor(.black)
                    
                    Text("프로필 수정")
                        .bold()
                        .foregroundStyle(.black)
                        .font(.system(size: 20))
                }
            }
        }
    }
}

#Preview {
    ProfileUpdateView()
}
