//
//  BottomArticleNews.swift
//  News
//
//  Created by Vlad on 16/7/24.
//

import SwiftUI

struct BottomArticleNews: View {
    
    // MARK: - Properties
    let article: Article
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            if let url = article.urlToImage, let imageURL = URL(string: url) {
                AsyncImage(url: imageURL) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    } else {
                        ZStack {
                            Rectangle()
                                .frame(width: 120, height: 120)
                                .foregroundStyle(.secondary)
                                .opacity(0.3)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Image(systemName: "photo")
                                .resizable()
                                .foregroundStyle(.secondary)
                                .scaledToFit()
                                .frame(height: 80)
                        }
                    }
                }
            }
            
            VStack(alignment: .leading) {
                Text(article.title)
                    .titleFont()
                
                Spacer()
                
                Text(article.publishedAt.convertDate())
                    .descriptionFont()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
