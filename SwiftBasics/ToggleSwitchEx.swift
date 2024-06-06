//
//  ToggleSwitchEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/5/24.
//

import SwiftUI

struct ToggleSwitchEx: View {
    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("Status")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change Status")
                })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleSwitchEx()
}
