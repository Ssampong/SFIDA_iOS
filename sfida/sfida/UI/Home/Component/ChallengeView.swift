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
    @StateObject var vm : ChallengeViewModel
    @State var Lists : [ChallengeResponse] = []

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
                        ForEach((0..<Lists.count), id: \.self) { count in
                            NavigationLink {
                                UserChallengeView(title: Lists[count].title, id: Lists[count].id)
                            } label: {
                                PostCell(title:Lists[count].title, imageUrl: Lists[count].image_path )
                            }
                        }
                    }
                }
                .onAppear{
                    Task {
                        do {
//                            let response = try await Challenge()
                            let response = try await vm.Challenge()
                            Lists = response
                        } catch {
                            print(error)
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
