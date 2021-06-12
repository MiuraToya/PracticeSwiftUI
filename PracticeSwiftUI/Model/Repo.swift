//
//  Repo.swift
//  PracticeSwiftUI
//
//  Created by 三浦　登哉 on 2021/06/12.
//

import Foundation

// 一意に識別できるようにIdentifiableに準拠
// Int、StringがHashableに準拠している
struct Repo: Identifiable {
    var id: Int
    var name: String
    var owner: User
}
