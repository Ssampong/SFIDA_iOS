//
//  ProductCell.swift
//  sfida
//
//  Created by dgsw8th61 on 7/17/24.
//

import SwiftUI
enum ProductCellType{
    case base
    case used
}
struct ProductCell: View {
    var type: ProductCellType
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
                            .opacity(type == .used ? 0.5 : 1)
                            .overlay{
                                VStack{
                                    HStack{
                                        Rectangle()
                                            .foregroundColor(Color.Main)
                                            .frame(width: 50,height: 23)
                                            .overlay{
                                                Text("D-24")
                                                    .foregroundColor(.white)
                                                    .bold()
                                                    .font(.system(size:16 ))
                                                
                                                if type == .used{
                                                    Image("useIcon")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: 60,height: 60)
                                                        .padding(.leading,240)
                                                        .padding(.top,40)
                                                }
                                            }
                                        Spacer()
                                    }
                                    Spacer()
                                }
                            }
                        HStack{
                            VStack(alignment: .leading,spacing: 4){
                                Text("컴포즈커피")
                                    .font(.system(size: 14))
                                    .foregroundStyle(Color.Main)
                                
                                Text("더블초코라떼(Ice)")
                                    .font(.system(size: 18))
                                    .foregroundStyle(.black)
                                
                                Text("2023.08.12 오후 03:55")
                                    .foregroundStyle(Color.gray3)
                                    .font(.system(size: 12))
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
