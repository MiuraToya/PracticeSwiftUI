//
//  RepoRow.swift
//  PracticeSwiftUI
//
//  Created by 三浦　登哉 on 2021/06/12.
//

import SwiftUI

struct RepoRow: View {
 var repo: Repo
 var body: some View {
  HStack {
   Image("GitHubMark")
    .resizable()
    .frame(width: 44.0, height: 44.0)
   VStack(alignment: .leading, spacing: -30.0) {
    Text(repo.owner.name)
     .font(.caption)
     .fontWeight(.regular)
     .foregroundColor(Color.black)
     .padding()
    Text(repo.name)
     .font(.body)
     .fontWeight(.semibold)
     .foregroundColor(Color.black)
     .padding()
   }
  }
 }
}

