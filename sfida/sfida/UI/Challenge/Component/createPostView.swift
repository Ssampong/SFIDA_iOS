//
//  createPostView.swift
//  sfida
//
//  Created by dgsw8th61 on 7/17/24.
//

import SwiftUI

struct CreateChallenge: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var content: String
    @State private var image: UIImage?
    @State private var openPhoto = false
    var body: some View {
        VStack{
            if openPhoto == false{
                Button(action: {
                    self.openPhoto = true
                }, label: {
                    ZStack{
                        if openPhoto == false{
                            Rectangle()
                                .frame(width: 350,height: 200)
                                .foregroundColor(Color.gray4)
                                .cornerRadius(20)
                                .overlay{
                                    VStack(spacing: 15){
                                        Image(systemName: "camera")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 67,height: 60)
                                            .foregroundColor(Color.gray3)
                                        Text("사진 추가")
                                            .font(.system(size: 20))
                                            .foregroundStyle(Color.gray3)
                                    }
                                }
                                .padding(.top,20)
                        }
                        
                        Image(uiImage: image ?? .init())
                            .resizable()
                            .frame(width: 350,height: 200)
                            .cornerRadius(20)
                            .onAppear{
                                print(image)
                            }
                            .padding(.top,20)
                        
                    }
                })
            }
            ZStack{
                TextEditor(text: $content)
                    .frame(maxWidth:.infinity,minHeight: 55, maxHeight: .infinity)
                    .frame(alignment: .leading)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                    .padding(20)
                
                Text("여기를 눌러 새로운 인증글을 남겨보세요.")
                    .font(.system(size: 14))
                    .foregroundStyle(content.isEmpty ? .gray : .clear)
                    .padding(.bottom,418)
                    .padding(.trailing,120)
            }
            
//            Divider()
//            
//            HStack(spacing: 20){
//                Button(action: {
//                    //
//                }, label: {
//                    Image(systemName: "photo")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 20,height: 20)
//                        .foregroundColor(.black)
//                        .padding(15)
//                })
//                Button(action: {
//                    //
//                }, label: {
//                    Image(systemName: "pencil")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 20,height: 20)
//                        .foregroundColor(.black)
//                        .padding(15)
//                })
//                Spacer()
//            }
//            .padding(.leading,20)
        }
        .sheet(isPresented: $openPhoto,onDismiss: {
            //            Task{
            //                await vm.upload(image: self.image ?? .init())
            //            }
        }){
            ImagePicker(image: self.$image)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden, for: .tabBar)
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
                    
                    Text("인증글 쓰기")
                        .bold()
                        .foregroundStyle(.black)
                        .font(.system(size: 20))
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button{
                    self.presentationMode.wrappedValue.dismiss()

                }label: {
                    Text("완료")
                        .font(.system(size: 16))
                        .foregroundStyle(Color.gray3)
                }
            }
        }
    }
}

#Preview {
    CreateChallenge(content: "")
}
