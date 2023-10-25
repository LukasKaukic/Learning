//
//  VutCavaliers.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct RidersPardubice: View {
    
    let ridersTeam = ridersPardubice
    
    var body: some View {
       VStack() {
            HStack {
                  Image ("riders-logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all)
                        
                        
                    VStack {
                        Text("Riders Pardubice")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle)
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                        
                        Text("Paredubice")
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
                       ForEach(ridersTeam, id: \.self) { riders in
                           NavigationLink(destination: Text(riders)) {
                              Image(systemName: "person")
                               Text(riders)
                                   .padding()
                           }
                           
                       }
                   }
               }
           }
        }
    }
}

struct RidersPardubice_Previews: PreviewProvider {
    static var previews: some View {
        RidersPardubice()
    }
}
