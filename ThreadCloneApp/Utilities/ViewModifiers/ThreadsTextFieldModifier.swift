//
//  ThreadsTextFieldModifier.swift
//  ThreadCloneApp
//
//  Created by 志水拓哉 on 2025/08/11.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body (content: Content) -> some View {
        content
            .font(.subheadline)
            .padding (12)
            .background (Color(.systemGray6))
            .cornerRadius (10)
            .padding (.horizontal, 24)
    }
}

extension View {
    func threadsTextField() -> some View {
        modifier(ThreadsTextFieldModifier())
    }
}
