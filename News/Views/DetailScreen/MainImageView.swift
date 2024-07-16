//
//  MainImageView.swift
//  News
//
//  Created by Vlad on 16/7/24.
//

import SwiftUI

struct MainImageView: View {
    
    // MARK: - Properties
    let article: Article
    
    // MARK: - Body
    var body: some View {
        GeometryReader { reader in
            if let url = article.urlToImage, let imageURL = URL(string: url) {
                AsyncImage(url: imageURL) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y: -reader.frame(in: .global).minY)
                            .frame(width: SizeConstant.ScreenWidth, height: reader.frame(in: .global).minY + SizeConstant.avatarHeight + 10)
                    }
                }
            }
        }
        .frame(height: SizeConstant.avatarHeight)
    }
}
