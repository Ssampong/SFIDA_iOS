//
//  ProfileImage.swift
//  sfida
//
//  Created by 이다경 on 7/17/24.
//

import Foundation
import SwiftUI

struct ProfileImage: View {
    var body: some View {
        Image("testprofile")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 180)
    }
}

#Preview {
    ProfileImage()
}
