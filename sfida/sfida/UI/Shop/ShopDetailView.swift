//
//  ShopDetailView.swift
//  sfida
//
//  Created by dgsw8th61 on 7/17/24.
//

import SwiftUI

enum ShopType{
    case base
    case used
}
struct ShopDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var type: ShopType
    var body: some View {
        ZStack{
            Color.BackgroundColor.edgesIgnoringSafeArea(.all)

            VStack(alignment: .center,spacing: 7){
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250,height: 250)
                    .padding(.vertical,20)
                    .opacity(type == .used ? 0.5 : 1)
                    .overlay{
                        if type == .used{
                            Image("useIcon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60,height: 60)
                                .padding(.leading,160)
                                .padding(.bottom,150)
                        }
                    }
                
                Text("컴포즈커피")
                    .font(.system(size: 14))
                    .foregroundStyle(Color.Main)
                
                Text("더블초코라떼(Ice)")
                    .font(.system(size: 18,weight: .bold))
                    .foregroundStyle(.black)
                
                Image("ex")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 240,height: 30)
                
                Text("1234 1234 1234 1234")
                    .font(.system(size: 15))
                    .foregroundStyle(.black)
                
            }
        }
        .toolbar(.hidden, for: .tabBar)
        .navigationBarBackButtonHidden()
        .navigationTitle("보관함")
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 15,height: 27)
                        .foregroundColor(.black)
                }
            }
        }
    }
}
#Preview {
    ShopDetailView(type: .used)
}
