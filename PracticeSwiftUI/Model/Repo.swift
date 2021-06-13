//
//  Repo.swift
//  PracticeSwiftUI
//
//  Created by 三浦　登哉 on 2021/06/12.
//

import Foundation

// 一意に識別できるようにIdentifiableに準拠
// Int、StringがHashableに準拠している
struct Repo: Identifiable, Codable {
    var id: Int
    var name: String
    var owner: User
    var description: String?
    var stargazersCount: Int
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case owner
        case description
        case stargazersCount = "stargazers_count"
    }
}
