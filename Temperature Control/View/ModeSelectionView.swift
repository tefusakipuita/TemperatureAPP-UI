//
//  ModeSelectionView.swift
//  Temperature Control
//
//  Created by 中筋淳朗 on 2020/11/20.
//

import SwiftUI

struct ModeSelectionView: View {
    
    // MARK: - Property
    
    @ObservedObject var modeSelector = ModeSelector()
    
    
    // MARK: - Body
    
    var body: some View {
        HStack (spacing: 24) {
            ForEach(modeSelector.modes) { mode in
                ModeButton(mode: mode)
                    .onTapGesture(perform: {
                        withAnimation {
                            modeSelector.selectMode(index: mode.id)
                        }
                    })
            } //: ForEach
        } //: HStack
    }
}

// MARK: - Preview

struct ModeSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
