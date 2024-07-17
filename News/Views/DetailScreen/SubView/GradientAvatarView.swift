//
//  GradientAvatarView.swift
//  News
//
//  Created by Vlad on 17/7/24.
//

import SwiftUI

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

#Preview {
    GradientAvatarView()
}
