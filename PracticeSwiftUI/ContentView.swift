//
//  ContentView.swift
//  PracticeSwiftUI
//
//  Created by 三浦　登哉 on 2021/06/12.
//

import SwiftUI

struct ContentView: View {
 
 private let mocRepos: [Repo] = [
  .init(id: 1, name: "Test Repo1", owner: User(name: "Test User1")),
  .init(id: 2, name: "Test Repo2", owner: User(name: "Test User2")),
  .init(id: 3, name: "Test Repo3", owner: User(name: "Test User3")),
  .init(id: 4, name: "Test Repo4", owner: User(name: "Test User4")),
  .init(id: 5, name: "Test Repo5", owner: User(name: "Test User5"))
 ]
 
 var body: some View {
  List(mocRepos) { repo in
   RepoRow(repo: repo)
  }
 }
}

struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
  ContentView()
 }
}

