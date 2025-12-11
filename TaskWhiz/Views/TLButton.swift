//
//  TLButton.swift
//  TaskWhiz
//
//  Created by Antonio Damjanović on 07.12.2025..
//

import SwiftUI

struct TLButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold(true)
                    .padding(10)
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "Value", backgroundColor: .pink, action: { /* Action */ })
}
