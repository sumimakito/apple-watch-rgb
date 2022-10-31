//
//  ContentView.swift
//  RGB Watch App
//
//  Created by Makito on 31/10/2022.
//

import SwiftUI

let DURATION: Double = 3
let STEP_SIZE: Double = 0.001

struct ContentView: View {
    @State var hue: Double = 0
    @State var color = Color.init(hue: 0, saturation: 1, brightness: 1)

    var body: some View {
        color
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: DURATION / (1 / STEP_SIZE), repeats: true) { _ in
                    hue += STEP_SIZE
                    if hue > 1 {
                        hue = 0
                    }
                    color = Color.init(hue: hue, saturation: 1, brightness: 1)
                }
            }
    }
}
