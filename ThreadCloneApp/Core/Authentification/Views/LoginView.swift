//
//  LoginView.swift
//  ThreadCloneApp
//
//  Created by 志水拓哉 on 2025/08/11.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                
                Image("thread-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                VStack {
                    TextField("メールアドレスを入力してください", text: $email)
                        .textInputAutocapitalization(.never)
                        .threadsTextField()
                    SecureField("パスワードを入力してください", text: $password)
                        .threadsTextField()
                        
                }
                
                NavigationLink {
                  Text("パスワードを忘れました")
                } label: {
                    Text("パスワードを忘れました？")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundStyle(Color.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("アカウントをお持ちでない？")
                        Text("サインアップ")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                }
                .padding()
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    LoginView()
}
