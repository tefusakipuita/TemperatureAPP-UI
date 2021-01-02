//
//  ContentView.swift
//  Temperature Control
//
//  Created by 中筋淳朗 on 2020/11/20.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Property
    
    @State var temperatureValue: CGFloat = 20
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Background
            Color.black
                .ignoresSafeArea()
            
            // MARK: - Circle Rular
            CircleRular(temperatureValue: $temperatureValue)
            
            VStack (alignment: .leading) {
                Spacer()
                
                // MARK: - Temperature Value
                TemperatureView(temperatureValue: $temperatureValue)
                
                // MARK: - Smart Schedule Text
                SmartScheduleView()
                    .padding(.top, 80)
                
                // MARK: - Mode Buttons
                ModeSelectionView()
                    .padding(.top, 20)
                
                // MARK: - Fan Speed Slider
                FanSpeedView()
                    .padding(.top, 40)
                    .padding(.trailing, 60)
                    .padding(.bottom, 40)
                
                // MARK: - Power
                PowerView()
                
            } //: VStack
            .frame(width: UIScreen.main.bounds.width)
            .padding(.leading, 30)
            
            
        } //: ZStack
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
