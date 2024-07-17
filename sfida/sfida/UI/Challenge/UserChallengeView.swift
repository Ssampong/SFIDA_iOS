//
//  UserChallengeView.swift
//  sfida
//
//  Created by dgsw8th61 on 7/17/24.
//

import SwiftUI

struct UserChallengeView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let title: String
    @State var isOutsider = true
    @State var isOrganizer = false
    var body: some View {
        NavigationView{
            ZStack{
                Color.BackgroundColor.edgesIgnoringSafeArea(.all)
                VStack{
                    Image("testImage")
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .frame(height: 210)
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 80)
                        .foregroundColor(.white)
                        .overlay{
                            VStack(spacing: 5){
                                HStack{
                                    Text(title)
                                        .bold()
                                        .font(.system(size: 20))
                                        .foregroundStyle(.black)
                                        .padding(10)
                                    Spacer()
                                    
                                    NavigationLink {
                                        CreateChallenge(content: "")
                                    } label: {
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(Color.Main)
                                                .frame(width: 50,height: 22)
                                                .cornerRadius(10)
                                                .padding()
                                            Text(isOrganizer ? "새 공지" :(isOutsider ? "참여하기" : "인증하기"))
                                                .font(.system(size: 10))
                                                .foregroundStyle(.white)
                                                .bold()
                                        }
                                    }
                                }
                                HStack{
                                    Text("멤버 21")
                                        .font(.system(size: 10))
                                        .foregroundStyle(.black)
                                        .padding(10)
                                    Spacer()
                                }
                            }
                        }
                    
                    ScrollView(showsIndicators: false){
                        ForEach((0..<3),id: \.self){count in
                            SuccessPostCell(userName: "이다경", content: "안녕하세요~ 페트병 재활용 기계 직접 사용해 보았답니다~!!어려운 챌린지 미션이였는데 저는 성공했네요^^ 다들 즐거운 하루 보내세요 ㅎ", type:.success)
                        }
                    }
                    
                    Spacer()
                    
                }
                .ignoresSafeArea()
            }
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
                }
            }
        }
    }
}
#Preview {
    UserChallengeView(title: "탄소 줄이기 운동")
}
