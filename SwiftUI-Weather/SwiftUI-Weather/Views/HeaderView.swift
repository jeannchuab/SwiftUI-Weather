//
//  HeaderView.swift
//  SwiftUI-Weather
//
//  Created by Jeann Luiz on 12/02/24.
//

import SwiftUI

struct HeaderView: View {
    @Binding var isNight: Bool
    var cityName: String
    var degrees: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
                                        
        VStack(spacing: 10) {
            Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(degrees)ºC")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .medium, design: .default))
        }
        .padding(.bottom)
    }
}

#Preview {
    HeaderView(isNight: .constant(false), cityName: "Cupertino, CA", degrees: "22")
}
