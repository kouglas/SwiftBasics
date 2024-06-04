//
//  LazyVGridEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/2/24.
//

import SwiftUI

struct LazyVGridEx: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil)
    ]
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.purple)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header: 
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ) 
                    {
                        ForEach(0..<20) {
                            index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                    )
                    {
                        ForEach(0..<20) {
                            index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    }
            })
            LazyVGrid(columns: columns) {
            }
        }
    }
}

#Preview {
    LazyVGridEx()
}
