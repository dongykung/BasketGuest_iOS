//
//  LoginViewModel.swift
//  BasketGuest
//
//  Created by 김동경 on 9/19/24.
//

import Foundation


class LoginViewModel: ObservableObject {
    
    enum Action {
        case google
        case kakao
    }
    
    
    
    func send(_ action: Action) {
        switch action {
        case .google:
            return
        case .kakao:
            return
        }
    }
    
}
