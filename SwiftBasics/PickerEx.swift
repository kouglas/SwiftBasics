//
//  PickerEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/5/24.
//

import SwiftUI

struct PickerEx: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
            ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
        HStack {
            Menu("Filter"){
            
            }
            Text(selection)
            
        }
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal)
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
        
        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions.indices){
                    index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            })
        .pickerStyle(SegmentedPickerStyle())
//        .background(Color.red)
//        Picker(
//            selection: $selection,
//            label:
//                HStack {
////                    Text("Picker")
////                    Text(selection)
//                },
//            content: {
//                ForEach(filterOptions, id: \.self) {
//                    option in
//                    HStack {
//                        Text(option)
//                            .tag(option)
//                        Image(systemName: "heart.fill")
//                    }
//                }
//            })
//            .pickerStyle(MenuPickerStyle())
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100) {
//                        number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundStyle(.red)
//                            .tag("\(number)")
//                    }
//                    
//            })
//            .pickerStyle(WheelPickerStyle())
//            .background(Color.gray.opacity(0.3))
//        }
            
    }
}

#Preview {
    PickerEx()
}
