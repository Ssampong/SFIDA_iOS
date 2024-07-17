//
//  SignInView.swift
//  sfida
//
//  Created by 이다경 on 7/16/24.
//

import Foundation
import SwiftUI

struct SignInView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State private var showpassword = false
    
    @State private var isTextFieldFilled = false
    @State private var isPasswordFilled = false
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                SignInHead()
                BodyView
            }
            .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)) { _ in
                // 키보드가 나타날 때 버튼을 숨깁니다.
                self.showpassword = false
            }
            .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)) { _ in
                // 키보드가 사라질 때 버튼을 다시 표시합니다.
                self.showpassword = true
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    private var BodyView: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("SFIDA. 계정으로 로그인 해주세요")
                    .font(.system(size: 20))
//                    .frame(maxWidth: .infinity)
                TextField("아이디", text: $username)
                    .autocapitalization(.none)
                    .padding([.leading, .vertical])
                    .overlay(
                        RoundedRectangle(cornerRadius: 6 )
                            .stroke(Color.gray2, lineWidth: 1)
                    )
                    .onChange(of: username) { newValue in
                        isTextFieldFilled = !newValue.isEmpty
                    }
                    .padding(.bottom, 5)
                HStack {
                    if showpassword {
                        SecureField("비밀번호", text: $password)
                            .autocapitalization(.none)
                    } else {
                        TextField("비밀번호",text: $password)
                            .autocapitalization(.none)
                    }
                    Button(action: {
                        self.showpassword.toggle()
                    }, label: {
                        Image(systemName: showpassword ? "eye.slash" : "eye")
                            .padding(.trailing)
                            .foregroundColor(.gray2)
                    })
                }
                .padding([.leading, .vertical])
                .overlay(
                    RoundedRectangle(cornerRadius: 6 )
                        .stroke(Color.gray2, lineWidth: 1)
                )
                .onChange(of: password) { newValue in
                    isPasswordFilled = !newValue.isEmpty
                }
            }
            Spacer()
            NavigationLink(destination: SignUpView()) {
                Text("로그인")
                    .padding(.horizontal, 150)
                    .padding(.vertical)
                    .foregroundColor(.white)
                    .background(isTextFieldFilled && isPasswordFilled ? Color.Main : Color.Main.opacity(0.5))
                    .cornerRadius(10)
            }
            .disabled(!isTextFieldFilled || !isPasswordFilled)
            NavigationLink(destination: SignUpView()) {
                Text("SFIDA.에 처음 오셨나요?")
                    .underline()
                    .font(.system(size: 13))
            }
        }
        .padding(.horizontal, 20) // leading, trailing, [.leading, .trailing, .top], horizontal, vertical
    }
}





#Preview {
    SignInView()
}
