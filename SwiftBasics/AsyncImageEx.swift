//
//  AsyncImageEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/13/24.
//

import SwiftUI

struct AsyncImageEx: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(
            url: url,
            content: {returnedImage in
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .cornerRadius(20)
            },
            placeholder: {
                ProgressView()
            })
    }
}

#Preview {
    AsyncImageEx()
}
