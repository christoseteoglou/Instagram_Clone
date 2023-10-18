//
//  ProfileView.swift
//  Instagram
//
//  Created by Christos Eteoglou on 2023-10-17.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username })
    }
    
    var body: some View {
        ScrollView {
            // Header
            ProfileHeaderView(user: user)
            
            // Post Grid View
            PostGridView(posts: posts)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
