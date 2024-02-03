//
//  Home.swift
//  GlassmorphismEffect
//
//  Created by Amish Tufail on 03/02/2024.
//

import SwiftUI

struct Home: View {
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            VStack(spacing: 12.0) {
                Text("Welcome!")
                    .font(.title.bold())
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("Username")
                        .font(.callout.bold())
                    customTF(hint: "xyz@example.com", value: $userName)
                    Text("Password")
                        .font(.callout.bold())
                        .padding(.top, 15.0)
                    customTF(hint: "•••••••••", value: $password, isPassword: true)
                    Button {
                        
                    } label: {
                        Text("Login")
                    }
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .padding(.vertical, 12.0)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .clipShape(.rect(cornerRadius: 8.0, style: .continuous))
                    .padding(.top, 30.0)
                }
                HStack(spacing: 12.0) {
                    Button {
                        
                    } label: {
                        Label("Email", systemImage: "envelope.fill")
                            .fontWeight(.semibold)
                            
                            .padding(.vertical, 10.0)
                            .frame(maxWidth: .infinity)
                            .background(.white.opacity(0.2))
                            .clipShape(.rect(cornerRadius: 8.0, style: .continuous))
                    }
                    Button {
                        
                    } label: {
                        Label("Apple", systemImage: "applelogo")
                            .fontWeight(.semibold)
                            
                            .padding(.vertical, 10.0)
                            .frame(maxWidth: .infinity)
                            .background(.white.opacity(0.2))
                            .clipShape(.rect(cornerRadius: 8.0, style: .continuous))
                    }
                }
                .foregroundStyle(.white)
                .padding(.top, 15.0)
            }
            .padding(.horizontal, 30.0)
            .padding(.top, 35.0)
            .padding(.bottom, 25.0)
            .background {
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background {
                    Rectangle()
                        .fill(.black)
                        .ignoresSafeArea()
                }
    }
}

extension Home {
    @ViewBuilder
    func customTF(hint: String, value: Binding<String>, isPassword: Bool = false) -> some View {
        Group {
            if isPassword {
                SecureField(hint, text: value)
            } else {
                TextField(hint, text: value)
            }
        }
        .padding(.vertical, 10.0)
        .padding(.horizontal, 15.0)
        .background(.white.opacity(0.12))
        .clipShape(.rect(cornerRadius: 8.0, style: .continuous))
    }
}

#Preview {
    ContentView()
}
