//
//  GamesScreen.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct GamesScreen: View {
    
    @State private var showCalendarScreen = false
    
    var body: some View {
        NavigationView {
            List {
    
                GamesCardView(game: gameOne)
                    .listRowSeparator(.hidden)
                    .shadow(radius: 5)
                
                GamesCardView(game: gameTwo)
                    .listRowSeparator(.hidden)
                    .shadow(radius: 5)
                
                GamesCardView(game: gameThree)
                    .listRowSeparator(.hidden)
                    .shadow(radius: 5)
                
                GamesCardView(game: gameFour)
                    .listRowSeparator(.hidden)
                    .shadow(radius: 5)
               
                GamesCardView(game: gameFive)
                    .listRowSeparator(.hidden)
                    .shadow(radius: 5)
            }
            .listStyle(.plain)
            .navigationBarTitle("Games", displayMode: .inline)
            .shadow(radius: 6)
            
        }
        
    }
}

struct GamesScreen_Previews: PreviewProvider {
    static var previews: some View {
        GamesScreen()
    }
}
