//
//  ControlGroupEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/26/24.
//

import SwiftUI

struct ControlGroupEx: View {
    var body: some View {
        Menu("My menu") {
            ControlGroup {
                Button("Uno") {
                    
                }
                Button("Dos") {
                    
                }
                Button("Tres") {
                    
                }
            }
            Button("Two") {
                
            }
            Button("Three"){
                
            }
        }
    }
}

#Preview {
    ControlGroupEx()
}
