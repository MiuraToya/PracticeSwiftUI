//
//  ContentView.swift
//  PracticeSwiftUI
//
//  Created by 三浦　登哉 on 2021/06/12.
//

import SwiftUI

struct ContentView: View {
 var body: some View {
  HStack(spacing: -15.0) {
   Image("GitHubMark")
    .resizable()
    .frame(width: 44.0, height: 44.0)
   VStack(alignment: .leading, spacing: -30.0) {
    Text("Owner Name")
     .font(.caption)
     .fontWeight(.regular)
     .foregroundColor(Color.black)
     .padding()
    Text("Repositoly Name")
     .font(.body)
     .fontWeight(.semibold)
     .foregroundColor(Color.black)
     .padding()
   }
  }
 }
}

struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
  ContentView()
 }
}
