//
//  VutCavaliers.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct AcademyPlzen: View {
    
    let plzenTeam = academiciPlzen
    
    var body: some View {
       VStack() {
            HStack {
                  Image ("plzen-logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all)
                        
                        
                    VStack {
                        Text("Akademici Plzeň")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                        
                        Text("Plzeň")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title2)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                    }
                }   .background(
                    LinearGradient(
                        colors: [Color.white,Color.blue,Color.primary],
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
                       ForEach(plzenTeam, id: \.self) { plzen in
                           NavigationLink(destination: Text(plzen)) {
                              Image(systemName: "person")
                               Text(plzen)
                                   .padding()
                           }
                           
                       }
                   }
               }
           }
           
       }
    }
}

struct AcademyPlzen_Previews: PreviewProvider {
    static var previews: some View {
        AcademyPlzen()
    }
}
