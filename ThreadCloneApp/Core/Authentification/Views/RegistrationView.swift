//
//  RegistrationView.swift
//  ThreadCloneApp
//
//  Created by 志水拓哉 on 2025/08/11.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    
    var body: some View {
        Spacer()
        
        Image("thread-app-icon")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding()
        VStack {
            TextField("メールアドレスを入力してください", text: $email)
                .threadsTextField()
            SecureField("パスワードを入力してください", text: $password)
                .threadsTextField()
            TextField("指名を入力してください", text: $fullname)
                .threadsTextField()
            TextField("ユーザーネームを入力してください", text: $username)
                .threadsTextField()
        }
        Button {
            
        } label: {
            Text("サインアップ")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 352, height: 44)
                .background(.black)
                .cornerRadius(8)
        }
        .padding(.vertical)
        Spacer()
        
        Divider()
        
        Button {
            
        } label: {
            HStack(spacing: 3) {
                Text("もうアカウント持ってます？")
                Text("サインイン")
                    .fontWeight(.semibold)
            }
            .foregroundStyle(.black)
            .font(.footnote)
        }
        .padding(16)
    }
}

#Preview {
    RegistrationView()
}
