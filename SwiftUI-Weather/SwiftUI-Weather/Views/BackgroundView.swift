//
//  BackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Jeann Luiz on 12/02/24.
//

import SwiftUI

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BackgroundView(topColor: Color.blue, bottomColor: Color("lightBlue"))
}
