//
//  VutCavaliers.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct NorthWings: View {
    
    let wingsTeam = wingsUsti
    
    var body: some View {
       VStack() {
            HStack {
                  Image ("wings-logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all)
                        
                        
                    VStack {
                        Text("Nort Wings")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                        
                        Text("Ústí nad Labem")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title2)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                    }
                }   .background(
                    LinearGradient(
                        colors: [Color.brown,Color.orange,Color.black],
                        startPoint: .bottomLeading,
                        endPoint: .topTrailing)
                )
                    Spacer()
           NavigationView() {
               List {
                   Section {
                       Text("Hráčí")
                           .fontWidth(.compressed)
                           .fontWeight(.bold)
                           .font(.largeTitle)
                       ForEach(wingsTeam, id: \.self) { wings in
                           NavigationLink(destination: Text(wings)) {
                              Image(systemName: "person")
                               Text(wings)
                                   .padding()
                           }
                           
                       }
                   }
               }
           }
        }
    }
}

struct NorthWings_Previews: PreviewProvider {
    static var previews: some View {
        NorthWings()
    }
}
