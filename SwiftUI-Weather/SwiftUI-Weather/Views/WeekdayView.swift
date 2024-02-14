//
//  WeekDayView.swift
//  SwiftUI-Weather
//
//  Created by Jeann Luiz on 12/02/24.
//

import SwiftUI

struct WeekdayView: View {    
    var weekDayText = ""
    var iconName = ""
    var degreesText: Int = 0
    
    var body: some View {
        VStack {
            Text(weekDayText)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
            
            VStack(spacing: 10) {
                Image(systemName: iconName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 36, height: 36)
                
                Text("\(degreesText)ºc")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .medium, design: .default))
            }                        
        }
    }
}
