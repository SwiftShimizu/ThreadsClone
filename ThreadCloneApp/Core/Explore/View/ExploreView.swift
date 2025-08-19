//
//  ExploreView.swift
//  ThreadCloneApp
//
//  Created by 志水拓哉 on 2025/08/11.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText: String = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<10, id: \.self) { user in
                        VStack {
                            UserCell()
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "探す")
        }
       
    }
}

#Preview {
    ExploreView()
}
