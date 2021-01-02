//
//  PowerView.swift
//  Temperature Control
//
//  Created by 中筋淳朗 on 2020/11/20.
//

import SwiftUI

struct PowerView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Spacer()
            
            ZStack {
                Image(systemName: "power")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.green)
                    .blur(radius: 10)
                Image(systemName: "power")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.green)
            } //: ZStack
            
            Text("Hold to turn off")
                .foregroundColor(Color.white.opacity(0.7))
            
            Spacer()
        } //: HStack
    }
}

// MARK: - Preview

struct PowerView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
