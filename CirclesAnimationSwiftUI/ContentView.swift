//
//  ContentView.swift
//  CirclesAnimationSwiftUI
//
//  Created by Tatevik Khunoyan on 31.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isTapped = false
    var body: some View {
        VStack {
            Circle()
                .scale(self.isTapped ? 0.6 : 1.0)
                .fill(self.isTapped ? Color(.blue) : .red)
                .frame(width: 200, height: 200)
                .animation(.linear, value: isTapped)
                .onTapGesture{
                    self.isTapped.toggle()
                }
            
            Circle()
                .scale(self.isTapped ? 0.3 : 1.0)
                .fill(self.isTapped ? Color(.red) : .orange)
                .frame(width: 200, height: 200)
                .animation(.linear(duration: 2), value: isTapped)
                .onTapGesture{
                    self.isTapped.toggle()
                }
            
            Path() { path in
                path.addEllipse(in: CGRect(x: 0, y: 0, width: 200, height: 200))
            }
            .scale(self.isTapped ? 0.5 : 1.0)
            .fill(self.isTapped ? Color(.green) : .blue)
            .frame(width: 200, height: 200)
            .animation(.linear, value: isTapped)
            .onTapGesture{
                self.isTapped.toggle()
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
