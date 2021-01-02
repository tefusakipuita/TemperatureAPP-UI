//
//  SmartScheduleView.swift
//  Temperature Control
//
//  Created by 中筋淳朗 on 2020/11/20.
//

import SwiftUI

struct SmartScheduleView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Image(systemName: "stopwatch")
                .foregroundColor(.white)
            
            ZStack {
                Text("Set Schedule")
                    .foregroundColor(.green)
                    .blur(radius: 15)
                Text("Set Schedule")
                    .foregroundColor(.green)
            }
        } //: HStack
        .font(.system(size: 22))
    }
}

// MARK: - Preview

struct SmartScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
