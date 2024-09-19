//
//  BasketGuestApp.swift
//  BasketGuest
//
//  Created by 김동경 on 9/19/24.
//

import SwiftUI

@main
struct BasketGuestApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @State private var authManager: AuthManager = .init()
    var body: some Scene {
        WindowGroup {
            LaunchView()
                .environmentObject(authManager)
        }
    }
}
