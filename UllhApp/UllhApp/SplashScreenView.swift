//
//  SplashScreenView.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 18.07.2023.
//

import SwiftUI

struct SplashScreenView: View {

    @State private var isActive = false
    @State private var size = 0.4
    @State private var opacity = 0.5

    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("liga-logo")
                        .font(.system(size: 80))
                    }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.4)) {
                        self.size = 1.0
                        self.opacity = 1.2
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.3) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }

        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
