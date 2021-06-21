//
//  RepoRepositoly.swift
//  PracticeSwiftUI
//
//  Created by 三浦　登哉 on 2021/06/21.
//

import Foundation
import Combine

struct RepoRepository {
    func fetchRepos() -> AnyPublisher<[Repo], Error> {
        RepoAPIClient().getRepos()
    }
}
