//
//  ContentView.swift
//  News
//
//  Created by Vlad on 16/7/24.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties
    @StateObject var vm = ViewModel()
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: - Top News
                TitleNewsView(title: "Top News")
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(vm.topNews, id: \.url) { article in
                            
                            NavigationLink(destination: DetailView(article: article)) {
                                TopArticleView(article: article)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal)
                }
                .shadow(color: .black.opacity(0.2), radius: 8, x: 5, y: 8)
                
                // MARK: - Bottom News
                TitleNewsView(title: "Bottom News")
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(vm.bottomNews, id: \.url) { article in
                            
                            NavigationLink(destination: DetailView(article: article)) {
                                BottomArticleNews(article: article)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal)
                }
                .shadow(color: .black.opacity(0.2), radius: 8, x: 5, y: 8)
            }
            .background(.secondary.opacity(0.3))
            .refreshable {
                vm.fetchBottomNews()
                vm.fetchTopNews()
            }
        }
    }
}

#Preview {
    HomeView()
}
