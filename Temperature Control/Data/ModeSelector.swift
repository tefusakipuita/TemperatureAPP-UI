//
//  ModeSelector.swift
//  Temperature Control
//
//  Created by 中筋淳朗 on 2020/11/20.
//

import SwiftUI

class ModeSelector: ObservableObject {
    
    // MARK: - Property
    
    @Published var modes = Data.modeData
    
    var selectedModeIndex = -1
    
    
    // MARK: - Function
    
    // モードボタンが押された時の処理
    func selectMode(index: Int) {
        
        // 押したボタンを true に
        modes[index].selected = true
        
        if selectedModeIndex != -1 {
            // 押されてたボタンを false に
            modes[selectedModeIndex].selected = false
        }
        
        // selectedModeIndex を更新
        selectedModeIndex = index
    }
    
}
