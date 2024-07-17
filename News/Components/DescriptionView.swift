//
//  DescriptionView.swift
//  News
//
//  Created by Vlad on 17/7/24.
//

import SwiftUI

struct DescriptionView: View {
    
    // MARK: - Properties
    let article: Article
    
    // MARK: - Body
    var body: some View {
        Text(article.description ?? "")
            .descriptionFont()
    }
}
