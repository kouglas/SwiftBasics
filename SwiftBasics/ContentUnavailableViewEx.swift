//
//  ContentUnavailableViewEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/26/24.
//

import SwiftUI

struct ContentUnavailableViewEx: View {
    var body: some View {
        ContentUnavailableView.search
//        ContentUnavailableView(
//            "No internet connection",
//            systemImage: "wifi.slash",
//            description: Text("Please connect to the internet and try again"))
    }
}

#Preview {
    ContentUnavailableViewEx()
}
