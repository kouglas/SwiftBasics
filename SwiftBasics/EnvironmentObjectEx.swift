//
//  EnvironmentObjectEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/9/24.
//

import SwiftUI

//    ObservedObject
//    StateObject
//    EnvironmentObject is similar
//    to StateObject but is not passed
//    around the app, the data is stored
//    in an environment object
class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = [
        
    ]
    
    init() {
        getData()
    }
    func getData() {
        self.dataArray.append(contentsOf: ["Iphone", "Ipad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectEx: View {

    @State var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(viewModel.dataArray, id: \.self){ item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        })
                }
            }
            .navigationTitle("iOS devices")
            
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    
    var body: some View {
        ZStack {
//            background
            Color.orange.edgesIgnoringSafeArea(.all)
            
            
//            foreground layer
            NavigationLink(
                destination: FinalView(),
                label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
                
            })
            
        }
    }
}

struct FinalView: View {
   @EnvironmentObject var viewModel: EnvironmentViewModel
    var body: some View {
        ZStack {
//            background
            LinearGradient(
                gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/,
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
//            foreground
            ScrollView{
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self, content: { item in
                        Text(item)
                        
                    })
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectEx()
//    DetailView(selectedItem: "iphone")
//    FinalView()
}
