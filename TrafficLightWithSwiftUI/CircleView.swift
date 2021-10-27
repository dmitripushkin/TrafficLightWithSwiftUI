//
//  CircleView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Повелитель on 27.10.2021.
//

import SwiftUI

struct CircleView: View {
    var color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .opacity(opacity)
            .foregroundColor(color)
            .frame(width: 130, height: 130)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color:.red, opacity: 1)
    }
}
