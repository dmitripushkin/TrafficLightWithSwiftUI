//
//  StartButtonView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Повелитель on 28.10.2021.
//

import SwiftUI

struct StartButtonView: View {
 
    let title: String
    let action: () -> Void
        
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 2))
        }
    }

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(title: "START", action: {})
    }
}
