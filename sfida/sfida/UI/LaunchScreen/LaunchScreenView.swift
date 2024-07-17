//
//  LaunchScreenView.swift
//  sfida
//
//  Created by 이다경 on 7/17/24.
//

import Foundation
import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            Image("SFIDALogo")
        }
    }
}

#Preview {
    LaunchScreenView()
}
