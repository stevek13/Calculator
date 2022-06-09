//  CalculatorHome.swift
//  Calculator
//
//  Created by Steve on 6/8/22.
//

import SwiftUI

// Cutom Colors
let darkerGray = Color(CGColor(gray: 0.1, alpha: 1))
let darkGray = Color(CGColor(gray: 0.3, alpha: 1))

struct CalculatorHome: View {
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .trailing, spacing: 0){
                Spacer()
                // Display current value
                Text("0")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .lineLimit(1)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                
                // Display the rows of buttons, each with the specified labels
                VStack(spacing: 10) {
                    CalculatorRow(labels: ["CE","","", String("\u{00f7}")], colors: [darkGray, darkGray, darkGray,.orange])
                    CalculatorRow(labels: ["7","8","9", String("\u{00d7}")])
                    CalculatorRow(labels: ["4","5","6","-"])
                    CalculatorRow(labels: ["1","2","3","+"])
                    CalculatorRow(labels: ["0",".","","="])
                }
                .frame(height: geometry.size.height * 0.7)
                .padding()
            }
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}
