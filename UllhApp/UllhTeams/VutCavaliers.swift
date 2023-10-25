//
//  VutCavaliers.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI


struct VutCavaliers: View {
    
    let vutTeam = vutCavaliers
    
    var body: some View {
       VStack() {
            HStack {
                  Image ("cavs-logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all)
                        
                        
                    VStack {
                        Text("Vut Cavaliers")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                        
                        Text("Brno")
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
                       ForEach(vutTeam, id: \.self) { vut in
                           NavigationLink(destination: Text(vut)) {
                              Image(systemName: "person")
                               Text(vut)
                                   .padding()
                           }
                           
                       }
                   }
               }
           }
        }
        
    }
    
}

struct VutCavaliers_Previews: PreviewProvider {
    static var previews: some View {
        VutCavaliers()
    }
}
