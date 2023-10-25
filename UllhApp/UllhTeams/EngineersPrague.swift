//
//  VutCavaliers.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI


struct EngineersPrague: View {
    
    let engineersTeam = inzenyriPraha
    
    var body: some View {
       VStack() {
            HStack {
                  Image ("engineers-logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all)
                        
                        
                    VStack {
                        Text("Engineers")
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
                        colors: [Color.secondary,Color.primary,Color.orange],
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
                       ForEach(engineersTeam, id: \.self) { engineers in
                           NavigationLink(destination: Text(engineers)) {
                              Image(systemName: "person")
                               Text(engineers)
                                   .padding()
                           }
                           
                       }
                   }
               }
           }
        }
    }
}

struct EngineersPrague_Previews: PreviewProvider {
    static var previews: some View {
        EngineersPrague()
    }
}
