//
//  ProductDetailView.swift
//  sfida
//
//  Created by dgsw8th61 on 7/17/24.
//

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack{
            Color.BackgroundColor.edgesIgnoringSafeArea(.all)
            VStack{
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                HStack{
                    VStack(alignment: .leading){
                        Text("컴포즈커피")
                            .font(.system(size: 16))
                            .foregroundStyle(Color.Main)
                        
                        Text("더블초코라떼(Ice) (TAKE-OUT)")
                            .font(.system(size: 23,weight: .semibold))
                            .foregroundStyle(.black)
                        
                        Text("11,200원")
                            .font(.system(size: 20,weight: .semibold))
                            .foregroundStyle(.black)
                            .padding(.top,20)
                    }
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .cornerRadius(10)
                        .padding(.horizontal,10)
                        .foregroundColor(Color.Main)
                        .overlay{
                            Text("포인트 교환하기")
                                .font(.system(size: 15,weight: .heavy))
                                .foregroundColor(.white)
                        }
                        .padding(.vertical,25)

                })
            }
        }
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
    ProductDetailView()
}
