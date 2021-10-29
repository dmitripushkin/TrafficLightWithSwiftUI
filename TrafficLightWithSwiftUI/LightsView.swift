//
//  LightsView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Повелитель on 27.10.2021.
//

import SwiftUI



struct LightsView: View {
    
    let redLightState: Double
    let yellowLightState: Double
    let greenLightState: Double
    
    var body: some View {
        VStack(alignment:.center, spacing: 25){
            CircleView(color: .red, opacity: redLightState)
            CircleView(color: .yellow, opacity: yellowLightState)
            CircleView(color: .green, opacity: greenLightState)
        }
    }
}

struct LightsView_Previews: PreviewProvider {
    static var previews: some View {
        LightsView(redLightState: 1, yellowLightState: 1, greenLightState: 1)
    }
}
