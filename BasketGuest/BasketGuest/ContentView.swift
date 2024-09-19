//
//  ContentView.swift
//  BasketGuest
//
//  Created by 김동경 on 9/19/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isCheck: Bool = false
    var body: some View {
        VStack {
            Button {
                    isCheck.toggle()
                } label: {
                    HStack {
                        if isCheck {
                            Image(systemName: "checkmark")
                        }
                        Text("스몰 포워드")
                            .foregroundStyle(.black)
                    }
                    .padding(8)
                    .font(.title3)
                    
                }
                .buttonStyle(.bordered)
                .tint(isCheck ? .accentColor : .none)
                .controlSize(.regular)
        }
        
    }
}

#Preview {
    ContentView()
}
