//
//  LaunchView.swift
//  BasketGuest
//
//  Created by 김동경 on 9/19/24.
//

import SwiftUI

struct LaunchView: View {
    
    @EnvironmentObject private var authManager: AuthManager
    var body: some View {
        Group {
            if let isAuthenticated = authManager.isAuthenticated {
                if isAuthenticated {
                    
                } else {
                    LoginView()
                }
            } else {
                ZStack(alignment: .center) {
            
                    Image(.background)
                        .resizable()
                        .frame(width: .infinity, height: .infinity)
                    
                    ProgressView()
                        .tint(.gray)
                        .scaleEffect(1.5)
                    
                }
                .ignoresSafeArea()
            }
        }
        .onAppear {
            authManager.checkCurrentUser()
        }
    }
}

#Preview {
    LaunchView()
        .environmentObject(AuthManager())
}
