//
//  SfidaTabView.swift
//  sfida
//
//  Created by dgsw8th61 on 7/16/24.
//

import SwiftUI

struct SfidaTabView : View {
    @State private var selectedTab = 0
    
//     UITabView 색상 초기화
    init() {
    UITabBar.appearance().backgroundColor = UIColor.white

    }
    var body: some View {
        NavigationView{
            TabView {
                ChallengeView(searchText: "", vm: ChallengeViewModel())
                    .tabItem {
                        Image(systemName: "tray")
                        Text("챌린지")
                    }
                HomeView(selectedIndex: 0)
                    .tabItem {
                        Image(systemName: "house")
                        Text("홈")
                    }
                ShopView(selectedIndex: 0)
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("포인트")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("프로필")
                    }
            }
            .font(.headline)
            .tint(Color.Main)
        }
    }
}

#Preview{
    SfidaTabView()
}
