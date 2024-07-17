//
//  HomeView.swift
//  sfida
//
//  Created by dgsw8th61 on 7/16/24.
//

import SwiftUI

struct HomeView : View {
    let columns = [GridItem(.fixed(120)),
                   GridItem(.fixed(120)),
                   GridItem(.fixed(120))]
    @State var selectedIndex = 0
    var body: some View {
        NavigationView{
            ZStack {
                Color.BackgroundColor.edgesIgnoringSafeArea(.all)
                VStack {
                    HomeHeader(selectedIndex: $selectedIndex)
                        .background(Color.white)
                    Spacer()
                    
                    ScrollView(showsIndicators: false){
                        if selectedIndex != 2{
                            LazyVGrid(columns: columns) {
                                ForEach((0..<6), id: \.self) { count in
                                    NavigationLink {
                                        UserChallengeView(title: "탄소 줄이기 운동!")
                                    } label: {
                                        PostCell(title: "이다경 바보")
                                    }
                                }
                            }
                        }else{
                            ForEach((0..<3),id: \.self){count in
                                SuccessPostCell(userName: "이다경", content: "안녕하세요~ 페트병 재활용 기계 직접 사용해 보았답니다~!!어려운 챌린지 미션이였는데 저는 성공했네요^^ 다들 즐거운 하루 보내세요 ㅎ", type: .success)
                            }
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
