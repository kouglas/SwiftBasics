//
//  StepperEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/6/24.
//

import SwiftUI

struct StepperEx: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ + widthIncrement, height: 100)
            
            
            Stepper("Stepper 2") {
//                increment
                incrementWidth(amount: 10)
            } onDecrement: {
                //decrement
               incrementWidth(amount: -10)
            }
        }
        
    }
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperEx()
}
