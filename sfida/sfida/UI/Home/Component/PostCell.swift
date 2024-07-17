//
//  PostCell.swift
//  sfida
//
//  Created by dgsw8th61 on 7/16/24.
//

import SwiftUI

struct PostCell : View {
    let title : String
    let imageUrl : String
    var body: some View {
        VStack(alignment:.leading,spacing: 7){
            Image("testImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 140)
            
//            if let imageUrl = URL(string: imageUrl){
//                AsyncImage(url: imageUrl) { image in
//                    image
//                        .resizable()
//                } placeholder: {
//                    Image("baseDiaryImage")
//                        .resizable()
//                        .scaledToFit()
//                }
//                .frame(height: 140)
//            }
            Text(title)
                .bold()
                .font(.system(size: 12))
                .foregroundStyle(.black)
        }
    }
}
//#Preview{
//    PostCell(title: "탄소줄이기 운동")
//}
