//
//  TemperatureView.swift
//  Temperature Control
//
//  Created by 中筋淳朗 on 2020/11/20.
//

import SwiftUI

struct TemperatureView: View {
    
    // MARK: - Property
    
    @Binding var temperatureValue: CGFloat
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 20) {
                Text("Temperature ℃")
                    .font(.system(size: 20, weight: .semibold, design: .monospaced))
                
                Text("\(Int(temperatureValue))")
                    .foregroundColor(.white)
                    .font(.system(size: 100, weight: .black, design: .monospaced))
            } //: VStack
            
            Spacer()
        } //: HStack
        .foregroundColor(.white)
    }
}

// MARK: - Preview

struct TemperatureView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
