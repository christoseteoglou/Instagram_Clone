//
//  Post.swift
//  Instagram
//
//  Created by Christos Eteoglou on 2023-10-18.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    
    let id: String
    let ownderUid: String
    let caption: String
    var likes: Int
    let imageURL: String
    let timestamp: Date
    var user: User?
    
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownderUid: NSUUID().uuidString,
              caption: "This is some test caption for now",
              likes: 123,
              imageURL: "eatoldglueProfile",
              timestamp: Date(),
              user: User.MOCK_USERS[0]
             ),
        .init(id: NSUUID().uuidString,
              ownderUid: NSUUID().uuidString,
              caption: "Treeee",
              likes: 102,
              imageURL: "treefolk",
              timestamp: Date(),
              user: User.MOCK_USERS[1]
             ),
        .init(id: NSUUID().uuidString,
              ownderUid: NSUUID().uuidString,
              caption: "Im a rocket maaaan 🚀 ",
              likes: 69,
              imageURL: "rocketship",
              timestamp: Date(),
              user: User.MOCK_USERS[2]
             ),
        .init(id: NSUUID().uuidString,
              ownderUid: NSUUID().uuidString,
              caption: "MIAUU ",
              likes: 314,
              imageURL: "catandrobin",
              timestamp: Date(),
              user: User.MOCK_USERS[3]
             )
        
    ]
}
