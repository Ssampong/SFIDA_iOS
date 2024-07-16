//
//  SuccessPostCell.swift
//  sfida
//
//  Created by dgsw8th61 on 7/16/24.
//

import SwiftUI

struct SuccessPostCell : View {
    let userName : String
    let content : String
    var body: some View {
        ZStack{
            Color.BackgroundColor.edgesIgnoringSafeArea(.all)

            Rectangle()
                .foregroundColor(.white)
                .frame(height: 370)
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
                .padding(.horizontal,10)
                .overlay{
                    VStack(alignment: .leading,spacing: 16){
                        HStack(spacing: 10){
                            Circle()
                                .frame(width: 25,height: 25)
                            Text(userName)
                                .font(.system(size: 12))
                                .bold()
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.top)
                        
                        Text(content)
                            .font(.system(size: 12))
                            .foregroundStyle(.black)
                        
                        Image("testImage1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity)
                            .frame(height: 230)
                            .cornerRadius(10)

                        Spacer()
                    }
                    .padding(.horizontal,25)
                }
        }
    }
}
#Preview {
    SuccessPostCell(userName: "이다경", content: "안녕하세요~ 페트병 재활용 기계 직접 사용해 보았답니다~!!어려운 챌린지 미션이였는데 저는 성공했네요^^ 다들 즐거운 하루 보내세요 ㅎ")
}
