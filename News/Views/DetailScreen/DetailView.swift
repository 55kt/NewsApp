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
    
    // MARK: - Body
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            MainImageView(article: article)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(article.title)
                    .titleFont()
                
                Text(article.description ?? "")
                    .descriptionFont()
                
                Text(article.publishedAt.convertDate())
                    .descriptionFont()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(.background)
            .background(GradientAvatarView())
        }
        .ignoresSafeArea()
        .toolbar(.hidden)
    }
}

struct GradientAvatarView: View {
    var body: some View {
        GeometryReader{ _ in
            LinearGradient(
                colors: [Color(UIColor.systemBackground), .clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: SizeConstant.avatarHeight / 4)
            .offset(y: -SizeConstant.avatarHeight / 4)
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
