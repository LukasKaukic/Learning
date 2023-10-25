//
//  GamesCardView.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct GamesCardView: View {
    
    @State private var showStatsScreen = false
    @State private var showHomeTeamScreen = false
    @State private var showAwayTeamScreen = false
    
    
    
    let game: Game
    
    var body: some View {
        ZStack {
            HStack {
                VStack {
                    Text(game.homeTeam)
                        .font(Font.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        showHomeTeamScreen = true
                    }) {
                        Image(game.homeTeamImage)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .frame(maxWidth: .infinity)
                    }
                    .sheet(isPresented: $showHomeTeamScreen) {
                                HomeTeamScreen()
                            }
                    .buttonStyle(PlainButtonStyle())
                }
               
                VStack  {
                    Spacer()
                    Spacer()
                    Text(game.score)
                        .scaledToFit()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    
                    Button(action: {
                               showStatsScreen = true
                           }) {
                               Text("Stats")
                                   .scaledToFit()
                                   .fontWeight(.semibold)
                                   .frame(width: 50)
                                   .foregroundColor(Color.white)
                                   .overlay {
                                       RoundedRectangle(cornerRadius: 5)
                                           .stroke(.white, lineWidth: 1)
                                   }
                               
                           }
                           .sheet(isPresented: $showStatsScreen) {
                               StatsScreen()
                           }
                    .contentShape(Rectangle())
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                }
               
                VStack {
                    Text(game.awayTeam)
                        .font(Font.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                   
                    Button(action: {
                        showAwayTeamScreen = true
                    }) {
                        Image(game.awayTeamImage)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .frame(maxWidth: .infinity)
                    }
                    .sheet(isPresented: $showAwayTeamScreen) {
                        AwayTeamScreen()
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                
            }
            .font(.footnote)
            .frame(height: 150)
            .background(LinearGradient(colors: [Color.black,Color.clear,Color.black], startPoint: .bottomLeading, endPoint: .topTrailing))
            .cornerRadius(20)
            .shadow(radius: 10)
        }
    }
}

struct GamesCardView_Previews: PreviewProvider {
    static var previews: some View {
        GamesCardView(game: gameOne)
            .previewLayout(.sizeThatFits)
    }
}
