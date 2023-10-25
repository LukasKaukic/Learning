//
//  VutCavaliers.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct TeamScreen: View {
    
    // let ukTeam = ukPraha
    let image: String
    let title: String
    
    var body: some View {
       VStack() {
            HStack {
                  Image ("uk-logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all)
                        
                        
                    VStack {
                        Text("Univerzita Karlova")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                        
                        Text("Praha")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title2)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                    }
                }   .background(
                    LinearGradient(
                        colors: [Color.white,Color.black,Color.gray],
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
                       ForEach(ukTeam, id: \.self) { uk in
                           NavigationLink(destination: Text(uk)) {
                              Image(systemName: "person")
                               Text(uk)
                                   .padding()
                           }
                           
                       }
                   }
               }

           }
           
       }
    }
}

struct UkPrague_Previews: PreviewProvider {
    static var previews: some View {
        UkPrague()
    }
}
