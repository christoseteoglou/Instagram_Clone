//
//  PostGridView.swift
//  Instagram
//
//  Created by Christos Eteoglou on 2023-10-18.
//

import SwiftUI

struct PostGridView: View {
    
    var posts: [Post]
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 1) {
            ForEach(posts) { post in
                Image(post.imageURL)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height: imageDimension)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView(posts: Post.MOCK_POSTS)
}
