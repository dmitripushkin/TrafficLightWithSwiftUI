//
//  CircleView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Повелитель on 27.10.2021.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .opacity(opacity)
            .foregroundColor(color)
            .frame(width: 130, height: 130)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color:.red, opacity: 1)
    }
}
