//
//  GridEx.swift
//  SwiftBasics
//
//  Created by Kari Douglas on 6/26/24.
//

import SwiftUI

struct GridEx: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8) {
            ForEach(0..<4) {
                rowIndex in
                GridRow {
                    ForEach(0..<4){ columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        cell(int: cellNumber)
                    }
                }
            }
        }
//        Grid {
//            GridRow {
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//            GridRow {
//                cell(int: 4)
//                cell(int: 5)
//            }
//
//        }
    }
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
}

#Preview {
    GridEx()
}
