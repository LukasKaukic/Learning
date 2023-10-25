//
//  VutCavaliers.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct HcMuni: View {
    
   let muniTeam = hcMuni
    
    var body: some View {
       VStack() {
            HStack {
                  Image ("muni-logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.all)
                        
                        
                    VStack {
                        Text("Hc Muni")
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
                       ForEach(muniTeam, id: \.self) { muni in
                           NavigationLink(destination: Text(muni)) {
                              Image(systemName: "person")
                               Text(muni)
                                   .padding()
                           }
                           
                       }
                   }
               }
           }
        }
    }
}

struct HcMuni_Previews: PreviewProvider {
    static var previews: some View {
        HcMuni()
    }
}
