//
//  ChallengeView.swift
//  sfida
//
//  Created by dgsw8th61 on 7/16/24.
//

import SwiftUI

struct ChallengeView: View {
    @State var searchText: String
    let columns = [GridItem(.fixed(120)),
                   GridItem(.fixed(120)),
                   GridItem(.fixed(120))]
    var body: some View {
        ZStack{
            Color.BackgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack{
                Rectangle()
                    .frame(minWidth: 100)
                    .frame(height: 98)
                    .foregroundColor(.white)
                    .overlay{
                        VStack{
                            HStack{
                                Image("SFIDA")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:64,height:16)
                                
                                Spacer()
                                
                                NavigationLink {
                                    CreateChallengeView(searchText: "", content: "")
                                } label: {
                                    Image("plus")
                                }
                            }
                            .padding(10)
                            
                            HStack{
                                Image(systemName: "magnifyingglass")
                                
                                TextField("Search", text: $searchText)
                                    .foregroundColor(.primary)
                            }
                            .padding(.vertical, 8)
                            .padding(.horizontal, 8)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(.systemGray6))
                            )
                            .padding(.horizontal,10)
                            .padding(.bottom,5)
                        }
                        
                    }
                    .background(Color.white)
                Spacer()
                
                ScrollView(showsIndicators: false){
                    LazyVGrid(columns: columns) {
                        ForEach((0..<6), id: \.self) { count in
                            NavigationLink {
                                UserChallengeView(title: "탄소 줄이기 운동!")
                            } label: {
                                PostCell(title: "이다경 바보")
                            }
                        }
                    }
                }
            }
        }
        .onTapGesture {
            hideKeyboard()
        }
        
    }
    
}
//화면 터치시 키보드 숨김
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
