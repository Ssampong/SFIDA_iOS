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
        ZStack {
            Color.BackgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                HomeHeader(selectedIndex: $selectedIndex)
                    .background(Color.white)
                Spacer()
                
                ScrollView{
                    if selectedIndex != 2{
                        LazyVGrid(columns: columns) {
                            ForEach((0..<6), id: \.self) { count in
                                PostCell(title: "이다경 바보")
                            }
                        }
                    }else{
                        ForEach((0..<3),id: \.self){count in
                            SuccessPostCell(userName: "이다경", content: "내용입니다.")
                        }
                        
                    }
                }
                
            }
            .onChange(of:selectedIndex) {newValue in
                print(newValue)
            }

        }
    }
}

#Preview {
    HomeView()
}
