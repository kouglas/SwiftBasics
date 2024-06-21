//
//  NativePopoverEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/21/24.
//

import SwiftUI

struct NativePopoverEx: View {
    @State private var showPopover: Bool = false
    @State private var feedBackOptions: [String] = [
    "Very good",
    "Average",
    "Very bad"
    ]
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button("Click ME") {
                showPopover.toggle()
            }
            .padding(20)
            .background(Color.yellow)
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                ScrollView {
                    VStack(alignment: .leading, spacing: 12, content: {
                        ForEach(feedBackOptions, id: \.self ) {
                            option in
                            Button(option) {

                            }
    //                        Text(option)
                            if option != feedBackOptions.last {
                                Divider()
                            }
                            
                        }
                    })                    .presentationCompactAdaptation(.popover)
                }
            })
            
        }
    }
}

#Preview {
    NativePopoverEx()
}
