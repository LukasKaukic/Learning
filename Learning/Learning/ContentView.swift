//
//  ContentView.swift
//  Learning
//
//  Created by Lukáš Kaukič on 19.06.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("")
                .tabItem() {
                    Image(systemName: "info.square")
                }
            Text("")
                .tabItem() {
                    Image(systemName: "calendar")
                }
            Text("")
                .tabItem() {
                    Image(systemName: "figure.hockey")
                    
                }
        }
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
