//
//  SliderEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/6/24.
//

import SwiftUI

struct SliderEx: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
//                "\(sliderValue)"
//                formatting the number of decimals values
                String(format: "%.0f", sliderValue)
            )
            .foregroundStyle(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 0...100)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                onEditingChanged: {(_) in
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                }
                )
                .accentColor(.red)
        }
        
    }
}

#Preview {
    SliderEx()
}
