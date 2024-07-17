//
//  OnBoardingView.swift
//  sfida
//
//  Created by 이다경 on 7/17/24.
//

import Foundation
import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("SFIDALogo")
                    Spacer()
                    OnBoardingButton()
                }
                .padding(.bottom,20)
            }
        }
    }
}

#Preview {
    OnBoardingView()
}
