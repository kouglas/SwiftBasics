//
//  ListEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/5/24.
//
// reminder that code in the body should be focused on the view, not the logic
import SwiftUI

struct ListEx: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "mango"
    ]
    @State var veggies: [String] = [
        "broccoli", "tomato", "carrot"
    ]
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: HStack {
                        Text("fruits")
                        Image(systemName: "flame.fill")
                    }
                        .font(.headline)
                        .foregroundStyle(.orange)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundStyle(.white)
                                .padding(.vertical)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .background(Color.pink)
                            
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.pink)
                    }
                Section(header: Text("veggies")) {
                    ForEach(veggies, id: \.self) {veggies in
                        Text(veggies.capitalized)
                    }
                }
                
            }
            .accentColor(.purple)
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: AddButton
            
            )
        }
        .accentColor(.red)
    }
    var AddButton: some View {
        Button("Add") {
            add()                    }
    }
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffSet: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffSet)
        
    }
    
    func add() {
        fruits.append("Kiwi")
    }
}

#Preview {
    ListEx()
}
