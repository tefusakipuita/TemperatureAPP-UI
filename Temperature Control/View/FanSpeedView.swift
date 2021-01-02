//
//  FanSpeedView.swift
//  Temperature Control
//
//  Created by 中筋淳朗 on 2020/11/20.
//

import SwiftUI

struct FanSpeedView: View {
    
    // MARK: - Property
    
    @State var sliderValue: Double = 4
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Image(systemName: "bonjour")
            
            Slider(value: $sliderValue, in: 0...10)
                .accentColor(.green)
        } //: HStack
        .foregroundColor(.white)
    }
}

// MARK: - Preview

struct FanSpeedView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
