//
//  ContentView.swift
//  fishing
//
//  Created by Cao, Yu on 2024/5/14.
//

import SwiftUI

struct ContentView: View {
    @State private  var alertsIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("🎣🎣🎣\n让鱼竿尽可能接近鱼")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89米")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1米")
                    .bold()
                Slider(value: .constant(50), in:1.0...100.0)
                Text("100米")
                    .bold()
            }
            Button("点我") {
                print("你好，SwiftUI")
                self.alertsIsVisible = true
            }.alert(isPresented: $alertsIsVisible) {
                Alert(title: Text("你好呀"), message: Text("这是我的第一个弹窗"), dismissButton: .default(Text("真棒!")))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    
    }
}
