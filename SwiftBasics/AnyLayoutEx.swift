//
//  AnyLayoutEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/21/24.
//

import SwiftUI

struct AnyLayoutEx: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Horizontal \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ?
            AnyLayout(VStackLayout()):
            AnyLayout(HStackLayout())
            
            layout {
                Text("alpha")
                Text("Beta")
                Text("Gamma")
            }
            
//            VStack {
//                Text("alpha")
//                Text("Betta")
//                Text("Gamma")
//            }
        }
    }
}

#Preview {
    AnyLayoutEx()
}
