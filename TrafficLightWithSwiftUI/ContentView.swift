//
//  ContentView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Повелитель on 26.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    @State private var currentLightIs = CurrentLight.red
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var buttonTitle = "START"
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    private var customizedButton: some View {
        Text(buttonTitle)
            .font(.largeTitle)
            .frame(width: 200, height: 80)
            .foregroundColor(.white)
            .background(.blue).cornerRadius(15)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
    }
    
    private var buttonTapped: () -> Void {
        return {
            if buttonTitle == "START" {
                buttonTitle = "NEXT"
            }
            
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
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                LightsView(redLight: redLightState, yellowLight: yellowLightState, greenLight: greenLightState)
                Spacer()
                Button(action: buttonTapped ) { customizedButton }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
