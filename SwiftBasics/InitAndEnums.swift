//
//  InitAndEnums.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/2/24.
//

import SwiftUI

struct InitAndEnums: View {
//    initializing this view with the background color of red
//    let backgroundColor: Color = Color.red
    
    let backgroundColor: Color
    let count: Int
    let title: String
    init(count: Int, fruit: Fruit) {
        self.count = count
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
            
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
//        self.title = title
//        
//        if title == "Apples" {
//            self.backgroundColor = .red
//        } else {
//            self.backgroundColor = .orange
//        }
    }
    
    enum Fruit {
        case apple
        case mangoes
        case orange
    }
    
    var body: some View {
        VStack (spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitAndEnums( count: 55, fruit: .apple)
        InitAndEnums( count: 55, fruit: .orange)
    }
}
