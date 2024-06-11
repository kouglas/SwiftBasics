//
//  ViewModelEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/9/24.
// property wrappers we can use to observe other
// classes and update them in our app in real time
// we can use these to observe other classes in our app
// and have them update our view in real time

import SwiftUI

struct FruitModel: Identifiable {
/* using Identifiable makes it
 easier to use the FruitModel struct
 in ForEach loop
 when you use Identifiable you need
 to add an id to your struct

 */
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

// the FruitViewModel class is
//handling all of the logic
// that handles data
//FruitViewModel is a custom class

class FruitViewModel: ObservableObject{
//    published alerts the FruitViewModel
/* added the Published property because
 it is going to be observed by the view,
 so every time fruitArray changes FruitViewModel
 will change/be updated
 */
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
//    run getFruits() in the view
//    on the first time its created and to avoid
//    reloading when the view returns again
    init(){
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Oranges", count: 20)
        let fruit2 = FruitModel(name: "Kiwi", count: 12)
        let fruit3 = FruitModel(name: "Cherries", count: 3)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false

        })
                
    }
//    index: IndexSet helps find
//    indices in arrays
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelEx: View {
//    state alerts the view
//    @State var fruitArray: [FruitModel] = [
////        "Strawberry", "Blueberry", "Mango", "Banana"
////        FruitModel(name: "Apples", count: 4)
//    ]
/*
 all of the logic below
 handles changes in the ui
 view
 */
    
//   @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
//    use StateObject if you want data to persist upon reload
//    the stateObject does not refresh
//    you should utilize StateObject when it inside of classes
//    if it's your first place you're creating in your app
//     if you're passing it into a second or sub view
//    use ObservedObject
//    @StateObject -> USE THIS ON CREATION / INIT
//    @ObserverObject -> USE THIS IN SUBVIEW
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray){
                        fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                    NavigationLink(
                        destination: AdditionalScreen(fruitViewModel: fruitViewModel),
                        label: {
            Image(systemName: "arrow.right")
                    .font(.title)
            })
            )
        }
    }

}

struct AdditionalScreen:View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                ForEach(fruitViewModel.fruitArray) {
                    fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }
            
//            Button(action: {
//                presentationMode.wrappedValue.dismiss()
//            }, label: {
//                Text("GO BACK")
//                    .foregroundStyle(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            })
        }
    }
}
#Preview {
    ViewModelEx()
    
}
