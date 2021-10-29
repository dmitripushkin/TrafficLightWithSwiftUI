//
//  ContentView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Повелитель on 26.10.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLightIs = CurrentLight.red
    @State private var buttonTitle = "START"
    
    private func switchColor() {
        switch currentLightIs {
        case .red: currentLightIs = .yellow
        case .yellow: currentLightIs = .green
        case .green: currentLightIs = .red
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                LightsView(
                    redLightState: currentLightIs == .red ? 1 : 0.3,
                    yellowLightState: currentLightIs == .yellow ? 1 : 0.3,
                    greenLightState: currentLightIs == .green ? 1 : 0.3)
                
                Spacer()
                
                StartButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                    buttonTitle = "NEXT"
                }
                    switchColor()
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
