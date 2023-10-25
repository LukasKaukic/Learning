//
//  VutCavaliers.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI


struct BlackDogs: View {
    
    let blackDogsTeam = blackDogs
    
    var body: some View {
       VStack() {
            HStack {
                  Image ("hotdogs-logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all)
                        
                        
                    VStack {
                        Text("Black Dogs")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                        
                        Text("Budějovice")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title2)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                    }
                }   .background(
                    LinearGradient(
                        colors: [Color.red,Color.black,Color.gray],
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
                       ForEach(blackDogsTeam, id: \.self) { dogs in
                           NavigationLink(destination: Text(dogs)) {
                              Image(systemName: "person")
                               Text(dogs)
                                   .padding()
                           }
                           
                       }
                   }
               }

           }
           
       }
    }
}

struct BlackDogs_Previews: PreviewProvider {
    static var previews: some View {
        BlackDogs()
    }
}
