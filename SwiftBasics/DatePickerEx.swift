//
//  DatePickerEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/6/24.
//

import SwiftUI

struct DatePickerEx: View {
    @State var selectedDate: Date = Date ()
    
    var body: some View {
       DatePicker("Select a date", selection: $selectedDate)
            .accentColor(.blue)
            .datePickerStyle(
//                CompactDatePickerStyle()
                GraphicalDatePickerStyle()
            )
    }
}

#Preview {
    DatePickerEx()
}
