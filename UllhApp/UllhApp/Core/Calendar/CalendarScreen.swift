//
//  CalendarScreen.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct CalendarScreen: View {
    
    @State private var digitalData = 0
    
    
    var body: some View {
        HStack{
            Button {
                if digitalData == 0 {}
                else {
                    digitalData = digitalData - 1
                }
           }   label: {
                   Image(systemName: "minus")
                       .foregroundColor(Color.black)
             
           }
            Text("\(digitalData)")
           
            Button {
                if digitalData == 10 {}
                else {
                    digitalData = digitalData + 1
                }
           }   label: {
                   Image(systemName: "plus")
                       .foregroundColor(Color.black)
             
           }
        }
    }
}

struct CalendarScreen_Previews: PreviewProvider {
    static var previews: some View {
        CalendarScreen()
    }
}
