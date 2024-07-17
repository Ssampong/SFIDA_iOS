//
//  CreateChallengeView.swift
//  sfida
//
//  Created by dgsw8th61 on 7/17/24.
//

import SwiftUI

struct CreateChallengeView: View {
    @State var searchText: String
    @State var content : String
    @State private var openPhoto = false
    @State private var image: UIImage?
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack(alignment:.center){
            TextField("챌린지 이름 입력", text: $searchText)
                .multilineTextAlignment(.center)
                .foregroundColor(.primary)
                .padding()
            if openPhoto == false{
                Button(action: {
                    self.openPhoto = true
                }, label: {
                    ZStack{
                        if openPhoto == false{
                            Rectangle()
                                .frame(width: 200,height: 200)
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
                                .padding(.bottom,30)
                        }
                        
                        Image(uiImage: image ?? .init())
                            .resizable()
                            .frame(width: 200,height: 200)
                            .cornerRadius(20)
                            .onAppear{
                                print(image)
                            }
                            .padding(.bottom,30)

                    }
                })
            }
            
            VStack(alignment:.center){
                Text("챌린지 설명")
                    .bold()
                    .font(.system(size: 17))
                    .foregroundStyle(.black)
                
                ZStack{
                    TextEditor(text: $content)
                        .frame(maxWidth:.infinity,minHeight: 55, maxHeight: .infinity)
                        .frame(alignment: .center)
                        .font(.system(size: 14))
                        .multilineTextAlignment(.center)
                    
                    Text("챌린지 설명 입력")
                        .font(.system(size: 14))
                        .foregroundStyle(content.isEmpty ? .gray : .clear)
                        .padding(.bottom,280)
                        .padding(.top,10)
                }
            }
            
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()

            }, label: {
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .cornerRadius(10)
                    .padding(.horizontal,10)
                    .foregroundColor(Color.Main)
                    .overlay{
                        Text("확인")
                            .font(.system(size: 15,weight: .heavy))
                            .foregroundColor(.white)
                    }
                    .padding(.vertical,25)

            })
        }
        .sheet(isPresented: $openPhoto,onDismiss: {
//            Task{
//                await vm.upload(image: self.image ?? .init())
//            }
        }){
            ImagePicker(image: self.$image)
        }
        .toolbar(.hidden, for: .tabBar)
        .navigationBarBackButtonHidden(true)
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
                    
                    Text("챌린지 생성")
                        .bold()
                        .foregroundStyle(.black)
                        .font(.system(size: 20))
                }
            }
        }
        .padding(.horizontal,20)
    }
}

#Preview {
    CreateChallengeView(searchText: "", content: "")
}
