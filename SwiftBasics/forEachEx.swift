//
//  forEachEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/2/24.
//

import SwiftUI

struct forEachEx: View {
    let data: [String] = ["Hi", "Bye", "You're a batch"]
    let myString: String = "Helllo"
    var body: some View {
        VStack {
            ForEach(data.indices) {
                index in
                Text("\(data[index]) \(index)")
            }
         
        }
    }
}

#Preview {
    forEachEx()
}
