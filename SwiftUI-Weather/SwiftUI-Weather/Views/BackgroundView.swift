//
//  BackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Jeann Luiz on 12/02/24.
//

import SwiftUI

struct BackgroundView: View {
    // The @Binding allows that we change the value here and reflects throught the code.
    // We are not changing the variable so the @Binding is not required.
    @Binding var isNight: Bool
            
    var body: some View {
        
        let topColor: Color = isNight ? .black : .blue
        let bottomColor: Color = isNight ? .gray : Color("lightBlue")
        
        /**
         
         Introduced on iOS 16
         ContainerRelativeShape()
             .fill(isNight ? Color.black.gradient : Color.blue.gradient)
         
         */
        
        
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    BackgroundView(isNight: .constant(false))
}
