//
//  HeaderView.swift
//  TaskWhiz
//
//  Created by Antonio Damjanović on 07.12.2025..
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let backgroundColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(backgroundColor)
                    .rotationEffect(Angle(degrees: angle))
                
                VStack {
                    Text(title)
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                        .bold()
                    Text(subtitle)
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                }
                .padding(.top, 80)
            }
            .frame(width: geometry.size.width * 3, height: 350)
            .offset(y: -150)
            .position(x: geometry.size.width / 2, y: 175)
        }
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, backgroundColor: .blue)
}
