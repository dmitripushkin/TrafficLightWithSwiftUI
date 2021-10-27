//
//  LightsView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Повелитель on 27.10.2021.
//

import SwiftUI



struct LightsView: View {
    
    var redLight: Double
    var yellowLight: Double
    var greenLight: Double
    
    
    var body: some View {
        VStack(alignment:.center, spacing: 25){
            CircleView(color: .red, opacity: redLight)
            CircleView(color: .yellow, opacity: yellowLight)
            CircleView(color: .green, opacity: greenLight)
        }
    }
}

struct LightsView_Previews: PreviewProvider {
    static var previews: some View {
        LightsView(redLight: 1, yellowLight: 1, greenLight: 1)
    }
}
