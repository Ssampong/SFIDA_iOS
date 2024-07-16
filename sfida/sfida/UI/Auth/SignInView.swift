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
            VStack {
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
                    .font(.title2)
                TextField("아이디", text: $username)
                    .autocapitalization(.none)
                    .padding(.leading)
                    .frame(width: 350, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6 )
                            .stroke(.red, lineWidth: 1)
                    )
                    .onChange(of: username) { newValue in
                        isTextFieldFilled = !newValue.isEmpty
                    }
                HStack {
                    if showpassword {
                        TextField("비밀번호", text: $password)
                            .autocapitalization(.none)
                    } else {
                        SecureField("비밀번호",text: $password)
                            .autocapitalization(.none)
                    }
                    Button(action: {
                        self.showpassword.toggle()
                    }, label: {
                        Image(systemName: showpassword ? "eye" : "eye.slash")
                            .padding(.trailing)
                            .foregroundColor(.red)
                    })
                }
                .padding(.leading)
                .frame(width: 350, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 6 )
                        .stroke(.red, lineWidth: 1)
                )
                .onChange(of: password) { newValue in
                    isPasswordFilled = !newValue.isEmpty
                }
                .padding(.top).frame(height: 45)
                Spacer()
            }
            NavigationLink(destination: SignUpView()) {
                Text("로그인")
                    .frame(width: 350, height: 50)
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
        .padding(.top, 50)
    }
}




#Preview {
    SignInView()
}
