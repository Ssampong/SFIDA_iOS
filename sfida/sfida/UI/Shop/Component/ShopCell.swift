//
//  ShopCell.swift
//  sfida
//
//  Created by dgsw8th61 on 7/17/24.
//

import SwiftUI

struct ShopCell: View {
    var body: some View {
        ZStack{
            Color.BackgroundColor.edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .frame(height: 250)
                .frame(width: 180)
                .foregroundColor(.white)
                .overlay{
                    VStack{
                        Image("Image")
                            .frame(width: 180,height: 180)

                        HStack{
                            VStack(alignment: .leading,spacing: 4){
                                Text("컴포즈커피")
                                    .font(.system(size: 14))
                                    .foregroundStyle(Color.Main)
                                
                                Text("더블초코라떼(Ice)")
                                    .font(.system(size: 18))
                                    .foregroundStyle(.black)
                                
                                Text("11,200 포인트")
                                    .foregroundStyle(.black)
                                    .font(.system(size: 15))
                                    .bold()
                            }
                            .padding(.horizontal,5)
                            Spacer()
                        }
                        Spacer()
                    }
                }
        }
    }
}
#Preview {
    ProductCell(type: .used)
}
