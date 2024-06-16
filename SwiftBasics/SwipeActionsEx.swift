//
//  SwipeActionsEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/15/24.
//

import SwiftUI

struct SwipeActionsEx: View {
    @State var fruits: [String] =  [
        "Mango", "banana", "orange", "peach"
    ]
    var body: some View {

        List {
            ForEach(fruits, id: \.self){
                Text($0.capitalized)
                    .swipeActions(
                        edge: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/,
                        allowsFullSwipe: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                            Button("Archive", action: {
                                
                            })
                            .tint(.green)
                            
                            Button("Save", action: {
                                
                            })
                            .tint(.orange)
                            Button("Junk", action: {
                                
                            })
                            }
                        }
            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                Button("Junk", action: {
                    
                })
                    
            }
//            .onDelete(perform: delete)
        }
    }
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    SwipeActionsEx()
}
