//
//  TernaryOperators.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/4/24.
//

import SwiftUI

struct TernaryOperators: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button \(isStartingState.description)") {
                isStartingState.toggle()
                
            }
            Text(isStartingState ? "Starting state" : "Ending state")
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue )
                    .frame(
                        width: isStartingState ? 200 : 50,
                        height: isStartingState ? 400 : 50
                    )
            
            Spacer()
        }
    }
}

#Preview {
    TernaryOperators()
}
