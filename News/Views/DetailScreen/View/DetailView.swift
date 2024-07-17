//
//  DetailView.swift
//  News
//
//  Created by Vlad on 16/7/24.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: - Properties
    let article: Article
    let spacing: CGFloat = 20
    
    // MARK: - Body
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            
            ScrollView(.vertical, showsIndicators: false) {
                MainImageView(article: article)
                
                VStack(alignment: .leading, spacing: spacing) {
                    
                    TitleView(article: article)
                    DescriptionView(article: article)
                    DateView(article: article)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.background)
                .background(GradientAvatarView())
            }
            .ignoresSafeArea()
            .toolbar(.hidden)
            
            BackButtonView()
                .padding(.leading)
        }
    }
}

// MARK: - Preview
#Preview {
    DetailView(
        article: Article(
            title: "Example",
            description: "Description text",
            url: "",
            urlToImage: "https://picsum.photos/200",
            publishedAt: Date()
        )
    )
}
