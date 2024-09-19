//
//  AuthManager.swift
//  BasketGuest
//
//  Created by 김동경 on 9/19/24.
//

import Foundation
import FirebaseAuth

class AuthManager: ObservableObject {
    @Published var isAuthenticated: Bool? = nil
    
    
    func checkCurrentUser() {
        self.isAuthenticated = Auth.auth().currentUser != nil
    }
}
