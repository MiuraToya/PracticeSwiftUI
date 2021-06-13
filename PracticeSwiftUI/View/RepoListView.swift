//
//  ContentView.swift
//  PracticeSwiftUI
//
//  Created by 三浦　登哉 on 2021/06/12.
//

import SwiftUI

struct RepoListView: View {
 
 @State private var mocRepos: [Repo] = []
 
 var body: some View {
  // リストにするときはListを使う
  // クロージャで一個ずつrepoを受け取ってRepoRowを初期化
  NavigationView {
   if mocRepos.isEmpty {
    ProgressView("Now Loading...")
   } else {
    List(mocRepos) { repo in
     NavigationLink(
      destination: RepoDetailView(repo: repo)
     ) {
      RepoRow(repo: repo)
     }
    }
    .navigationTitle("Repositoly")
   }
  }
  .onAppear() {
   loadRepos()
  }
 }
 
 private func loadRepos() {
  DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
   mocRepos = [.mock1, .mock2, .mock3, .mock4, .mock5]
  }
 }
}

struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
  RepoListView()
 }
}

