//
//  BackgroundView.swift
//  BasketGuest
//
//  Created by 김동경 on 9/19/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image(.background)
            .resizable()
            .frame(width: .infinity, height: .infinity)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
