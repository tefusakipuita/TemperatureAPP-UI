//
//  CircleRular.swift
//  Temperature Control
//
//  Created by 中筋淳朗 on 2020/11/20.
//

import SwiftUI

struct CircleRular: View {
    
    // MARK: - Property
    
    // 現在の温度 (例: 20℃)
    @Binding var temperatureValue: CGFloat
    
    // 加える回転用 (例: +35°)
    @State var rotate: CGFloat = 0
    // 温度の変更用 (例: -7℃)
    @State var dragValue: CGFloat = 0
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - 外周円
            Circle() // blur用(shadow的な)
                .stroke(Color.green, lineWidth: 10)
                .scaleEffect(1.15)
                .blur(radius: 10)
            Circle()
                .stroke(Color.green, lineWidth: 3)
                .scaleEffect(1.15)
            
            // MARK: - 小目盛り
            Circle()
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 16, dash: [2, 4]))
                .scaleEffect(1.06)
            
            // MARK: - 大目盛り
            Circle()
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 24, dash: [2, 40]))
        } //: ZStack
        .frame(width: 580, height: 580)
        // 『rotate』に変更を加えることによって回転を加える
        .rotationEffect(Angle(degrees: Double(rotate)))
        .offset(x: 360)
        // DragGesture
        .gesture(
            DragGesture(minimumDistance: 0)
                .onChanged({ value in
                    withAnimation (.easeIn(duration: 0.1)) {
                        changeTemperature(height: value.translation.height)
                    }
                })
                .onEnded({ _ in
                    withAnimation {
                        rotate = 0
                    }
                    dragValue = 0
                })
        ) //: gesture
    }
    
    
    // MARK: - Function
    
    func changeTemperature(height: CGFloat) {
        
        // MARK: - 回転用
        //ドラッグした高さ / 5　の回転を加える (母数は好みで)
        rotate = -height / 5
        
        // MARK: - 温度変更用 ※超重要
        
        // この書き方だとonChangedが呼ばれる時に,同じdragValueでも一瞬差ができる
        let tempValue = dragValue
        dragValue = height

        // ※ onChanged が呼ばれるたびに変化した差分を足していく
        let diff = tempValue - dragValue
        // 母数の15は好み
        temperatureValue += diff / 15
    }
}

// MARK: - Preview

struct CircleRular_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
