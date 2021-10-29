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
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var buttonTitle = "START"
    
    private func switchColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLightIs {
        case .red:
            greenLightState = lightIsOff
            redLightState = lightIsOn
            currentLightIs = .yellow
        case .yellow:
            redLightState = lightIsOff
            yellowLightState = lightIsOn
            currentLightIs = .green
        case .green:
            yellowLightState = lightIsOff
            greenLightState = lightIsOn
            currentLightIs = .red
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                LightsView(redLightState: redLightState, yellowLightState: yellowLightState, greenLightState: greenLightState)
                
                Spacer()
                
                StartButtonView(title: buttonTitle) { if buttonTitle == "START" {
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
