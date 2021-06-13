//
//  RepoDetailView1.swift
//  PracticeSwiftUI
//
//  Created by 三浦　登哉 on 2021/06/13.
//

import SwiftUI
import Foundation
struct RepoDetailView: View {
    let repo: Repo
    
    var body: some View {
        ScrollView {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Image("GitHubMark")
                            .resizable()
                            .frame(width: 16, height: 16)
                        Text(repo.owner.name)
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                    }
                    Text(repo.name)
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    Text(repo.description)
                        .padding(.top, 8)
                    HStack {
                        Image(systemName: "star")
                        Text("\(repo.stargazersCount) stars")
                    }
                    .padding(.top, 8)
                    Spacer()
                }
                .padding()
                Spacer()
            }
        }
    }
}

struct RepoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RepoDetailView(repo: .mock1)
    }
}
