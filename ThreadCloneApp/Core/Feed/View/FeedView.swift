//
//  FeedView.swift
//  ThreadCloneApp
//
//  Created by 志水拓哉 on 2025/08/11.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0...10, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("更新できるよ")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem {
                Image(systemName: "arrow.counterclockwise")
                    .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
