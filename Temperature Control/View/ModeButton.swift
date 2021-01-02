//
//  ModeView.swift
//  Temperature Control
//
//  Created by 中筋淳朗 on 2020/11/20.
//

import SwiftUI

struct ModeButton: View {
    
    // MARK: - Property
    
    var mode: Mode
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - デフォルト用の枠
            Circle()
                .stroke(Color.white, lineWidth: mode.selected ? 0 : 1.5)
                .frame(width: 50, height: 50)
            
            // MARK: - モード選択時のサークル
            Circle()
                .fill(mode.selected ? Color.green.opacity(0.7) : Color.clear)
                .frame(width: 50, height: 50)
                .blur(radius: 15)
            Circle()
                .fill(mode.selected ? Color.green : Color.clear)
                .frame(width: 50, height: 50)
            
            // MARK: - モード画像
            Image(systemName: mode.imageName)
                .foregroundColor(.white)
                .font(.system(size: 20))
        } //: ZStack
    }
}

// MARK: - Preview

struct ModeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
