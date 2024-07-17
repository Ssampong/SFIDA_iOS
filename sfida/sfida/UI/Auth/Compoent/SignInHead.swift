//
//  SignInHead.swift
//  sfida
//
//  Created by 이다경 on 7/16/24.
//

import Foundation
import SwiftUI

struct SignInHead: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack {
            Button(action: { dismiss() }, label: {
                HStack {
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 25))
                    Text("로그인")
                        .fontWeight(.heavy)
                        .font(.system(size: 25))
                }
            })
            .foregroundColor(.black)
            Spacer()
        }
        .padding([.top, .leading])
    }
}


#Preview {
    SignInHead()
}
