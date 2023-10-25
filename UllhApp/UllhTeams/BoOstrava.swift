//
//  VutCavaliers.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI


struct BoOstrava: View {
    
    let boTeam = boOstrava
    
    var body: some View {
       VStack() {
            HStack {
                  Image ("bo-ostrava")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all)
                        
                        
                    VStack {
                        Text("Bo Ostrava")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                        
                        Text("Ostrava")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title2)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                    }
                }   .background(
                    LinearGradient(
                        colors: [Color.white,Color.orange,Color.black],
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
                       ForEach(boTeam, id: \.self) { bo in
                           NavigationLink(destination: Text(bo)) {
                              Image(systemName: "person")
                               Text(bo)
                                   .padding()
                           }
                           
                       }
                   }
               }
           }
        }
    }
}

struct BoOstrava_Previews: PreviewProvider {
    static var previews: some View {
        BoOstrava()
    }
}
