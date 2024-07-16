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
    var body: some View {
        ZStack {
            Color.BackgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                HomeHeader()
                    .background(Color.white)
                Spacer()
                
                ScrollView{
                    LazyVGrid(columns: columns) {
                        ForEach((0..<6), id: \.self) { count in
                            PostCell(title: "이다경 바보")
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
