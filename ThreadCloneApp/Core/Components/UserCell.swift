//
//  UserCell.swift
//  ThreadCloneApp
//
//  Created by 志水拓哉 on 2025/08/17.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading) {
                Text("the king of cat")
                    .fontWeight(.semibold)
                Text("12345")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("フォロー")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                )
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
