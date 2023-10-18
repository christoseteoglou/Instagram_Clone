//
//  User.swift
//  Instagram
//
//  Created by Christos Eteoglou on 2023-10-18.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    
    let id: String
    var username: String
    var profileImageURL: String?
    var fullname: String?
    var bio: String?
    let email: String
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString,
              username: "eatoldglue",
              profileImageURL: "eatoldglueProfile",
              fullname: "Christos Eteoglou",
              bio: "Software Engineer",
              email: "hello@christoseteoglou.com"),
        
        .init(id: NSUUID().uuidString,
              username: "TreeFolks",
              profileImageURL: "treefolk",
              fullname: "Big Tree",
              bio: "Im a tree",
              email: "tree@forest.com"),
        
            .init(id: NSUUID().uuidString,
                  username: "Spaceman",
                  profileImageURL: "rocketship",
                  fullname: "Spaceman Jr.",
                  bio: "You called it, i'm a space man",
                  email: "PlutoIsAPlanet@space.com"),
        
            .init(id: NSUUID().uuidString,
                  username: "cat&robin",
                  profileImageURL: "catandrobin",
                  fullname: "Cat and Robin",
                  bio: "A Cat and a robin.",
                  email: "catandrobin@friends.com")
    ]
}
