//
//  CircularProfileImageView.swift
//  ThreadCloneApp
//
//  Created by 志水拓哉 on 2025/08/17.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image(systemName: "cat")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .background(Color.gray)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
