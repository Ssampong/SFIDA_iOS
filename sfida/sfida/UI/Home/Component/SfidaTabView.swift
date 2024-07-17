//
//  SfidaTabView.swift
//  sfida
//
//  Created by dgsw8th61 on 7/16/24.
//

import SwiftUI

struct SfidaTabView : View {
    var body: some View {
        TabView {
            ChallengeView(searchText: "")
                .tabItem {
                    Image(systemName: "tray")
                    Text("챌린지")
                }
            HomeView(selectedIndex: 0)
                .tabItem {
                    Image(systemName: "house")
                    Text("홈")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("포인트")
                }
            
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "person")
                    Text("프로필")
                }
        }
        .font(.headline)
        .tint(Color.Main)
    }
}

#Preview{
    SfidaTabView()
}
