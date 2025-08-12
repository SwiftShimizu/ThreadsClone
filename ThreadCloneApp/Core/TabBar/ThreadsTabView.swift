//
//  ThreadsTabView.swift
//  ThreadCloneApp
//
//  Created by 志水拓哉 on 2025/08/11.
//

import SwiftUI

struct ThreadsTabView: View {
    enum Tab: Int {
        case feed = 0
        case explore
        case upload
        case activity
        case profile
    }
    @State private var selectedTab: Tab = .feed
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName: selectedTab == .feed ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == .feed ? .fill : .none)
                }
                .tag(Tab.feed)
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(Tab.explore)
            CreateThreadView()
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag(Tab.upload)
            ActivityView()
                .tabItem {
                    Image(systemName: selectedTab == .activity ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selectedTab == .activity ? .fill : .none)
                }
                .tag(Tab.activity)
            ProfileView()
                .tabItem {
                    Image(systemName: selectedTab == .profile ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTab == .profile ? .fill : .none)
                }
                .tag(Tab.profile)
        }
        .tint(Color.black)
    }
}

#Preview {
    ThreadsTabView()
}
