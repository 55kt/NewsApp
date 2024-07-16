//
//  Model.swift
//  News
//
//  Created by Vlad on 16/7/24.
//

import Foundation

// MARK: - Welcome
struct News: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Decodable {
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: Date
}
