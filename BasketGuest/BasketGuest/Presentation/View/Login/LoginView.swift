//
//  LoginView.swift
//  BasketGuest
//
//  Created by 김동경 on 9/19/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                //백그라운드 배경 뷰
                BackgroundView()
                
                VStack(spacing: 12) {
                    //빈 공간
                    Spacer()
                        .frame(maxHeight: proxy.size.height * 0.65)
                        .background(.orange)
                    
                    
                    SocialLoginButton(
                        loginText: "구글 로그인",
                        loginLogo: Image(.google),
                        maxWidth: proxy.size.width * 0.9,
                        maxHeight: proxy.size.height * 0.07,
                        textColor: .black,
                        backgroundColor: .white) {
                            
                        }
                    
                    SocialLoginButton(
                        loginText: "카카오 로그인",
                        loginLogo: Image(.kakao),
                        maxWidth: proxy.size.width * 0.9,
                        maxHeight: proxy.size.height * 0.07,
                        textColor: .black,
                        backgroundColor: .kakaocolor) {
                            
                        }
                    
                    SocialLoginButton(
                        loginText: "애플 로그인",
                        loginLogo: Image(.apple),
                        maxWidth: proxy.size.width * 0.9,
                        maxHeight: proxy.size.height * 0.07,
                        textColor: .white,
                        backgroundColor: .black) {
                            
                        }
                }
                .frame(width: proxy.size.width, height: proxy.size.height)
                
                
                
            }
        }
    }
}

#Preview {
    LoginView()
}
