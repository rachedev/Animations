//
//  ContentView.swift
//  Animations
//
//  Created by RachelleLee on 8/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1

    var body: some View {
        Button("Tap Me") {
            self.animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
        .animation(
            Animation.easeInOut(duration: 1)
                .repeatCount(3, autoreverses: true)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
