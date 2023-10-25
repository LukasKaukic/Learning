//
//  TabBarView.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            NewsScreen()
                .tabItem {
                    Image(systemName: "note.text")
                    Text("News")
                }
            
            GamesScreen()
                .tabItem {
                    Image(systemName: "hockey.puck")
                    Text("Games")

                }
            
            CalendarScreen()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
            
            ProfileScreen()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
