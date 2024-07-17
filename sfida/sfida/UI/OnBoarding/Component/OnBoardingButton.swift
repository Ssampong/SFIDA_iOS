//
//  OnBoardingButton.swift
//  sfida
//
//  Created by 이다경 on 7/17/24.
//

import Foundation
import SwiftUI

struct OnBoardingButton: View {
    var body: some View {
        VStack {
            NavigationLink(destination: SignInView()) {
                Text("로그인")
                    .foregroundStyle(.white)
                    .padding(.horizontal, 135)
                    .padding(.vertical)
                    .background(Color.Main)
                    .cornerRadius(10)
                
            }
            NavigationLink(destination: SignUpView()) {
                Text("회원가입")
                    .foregroundStyle(Color.Main)
                    .padding(.horizontal, 129)
                    .padding(.vertical)
                    .background(.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.Main, lineWidth: 1)
                          )
            }
        }
        .font(.system(size: 15))
        .bold()
    }
}

#Preview {
    OnBoardingButton()
}
