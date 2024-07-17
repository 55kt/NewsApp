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
            
            AsyncImageView(
                article: article,
                imageHeight: 120,
                imageWidth: 120,
                placeholder: 120
            )
            
            VStack(alignment: .leading) {
                
                TitleView(article: article)
                Spacer()
                DescriptionView(article: article)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
