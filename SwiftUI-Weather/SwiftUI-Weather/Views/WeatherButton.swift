//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Jeann Luiz on 14/02/24.
//

import SwiftUI

struct WeatherButton: View {
    var body: some View {
        Text("Change day time")
            .frame(width: 280, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.system(size: 16, weight: .medium, design: .default))
            .cornerRadius(8)
    }
}

#Preview {
    WeatherButton()
}
