//
//  VutCavaliers.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct HcOlomouc: View {
    
    let olomoucTeam = hcOlmik
    
    var body: some View {
       VStack() {
            HStack {
                  Image ("olmik-logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all)
                        
                        
                    VStack {
                        Text("Hc Olomouc")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                        
                        Text("Olomouc")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title2)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                    }
                }   .background(
                    LinearGradient(
                        colors: [Color.white,Color.blue,Color.gray],
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
                       ForEach(olomoucTeam, id: \.self) { olomouc in
                           NavigationLink(destination: Text(olomouc)) {
                              Image(systemName: "person")
                               Text(olomouc)
                                   .padding()
                           }
                           
                       }
                   }
               }
           }
        }
    }
}

struct HcOlomouc_Previews: PreviewProvider {
    static var previews: some View {
        HcOlomouc()
    }
}
