//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Jeann Luiz on 12/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            
            VStack {
                HeaderView(isNight: $isNight,
                           cityName: "Cupertino, CA",
                           degrees: "22")
                                                
                //TODO: Get this info from a API
                HStack {
                    WeekdayView(weekDayText: "MON", iconName: "sun.max.fill", degreesText: 32)
                    WeekdayView(weekDayText: "TUE", iconName: "cloud.fill", degreesText: 24)
                    WeekdayView(weekDayText: "WED", iconName: "cloud.sun.fill", degreesText: 20)
                    WeekdayView(weekDayText: "THU", iconName: "cloud.sun.rain.fill", degreesText: 21)
                    WeekdayView(weekDayText: "FRI", iconName: "cloud.sun.bolt.fill", degreesText: 25)
                }
                
                Spacer()
                
                Button {
                    withAnimation(.easeInOut) {
                        isNight.toggle()
                    }
                } label: {
                    Text("Change day time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 16, weight: .medium, design: .default))
                        .cornerRadius(8)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
