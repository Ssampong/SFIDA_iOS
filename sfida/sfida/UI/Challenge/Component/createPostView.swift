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
    var body: some View {
        VStack{
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
                    .padding(.bottom,580)
                    .padding(.trailing,120)
            }
//            .padding(.top,20)
            Divider()
            
            HStack(spacing: 20){
                Button(action: {
                    //
                }, label: {
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20,height: 20)
                        .foregroundColor(.black)
                        .padding(15)
                })
                Button(action: {
                    //
                }, label: {
                    Image(systemName: "pencil")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20,height: 20)
                        .foregroundColor(.black)
                        .padding(15)
                })
                Spacer()
            }
            .padding(.leading,20)
        }
        .navigationBarBackButtonHidden()
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
                Button(action: {
                    
                }, label: {
                    Text("완료")
                        .font(.system(size: 16))
                        .foregroundStyle(Color.gray3)
                })
            }
        }
    }
}

#Preview {
    CreateChallenge(content: "")
}
