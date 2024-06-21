//
//  ResizableSheetEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/21/24.
//

import SwiftUI

struct ResizableSheetEx: View {
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    var body: some View {
        Button("click me") {
            
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.8), .medium, .large])
                .presentationDetents([.medium, .large], selection: $detents)
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("Hello world!!!")
            
            VStack(spacing: 20) {
                Button("Medium") {
                    detents = .medium
                }
                Button("Large") {
                    detents = .large
                }
            }
        }
    }
    
    
}

#Preview {
    ResizableSheetEx()
}
