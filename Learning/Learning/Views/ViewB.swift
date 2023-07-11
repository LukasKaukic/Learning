//
//  ViewB.swift
//  Learning
//
//  Created by Lukáš Kaukič on 19.06.2023.
//

import SwiftUI

struct ViewB: View {
    let managers: [Management] = managementList.vutManagement
   
    var body: some View {
        NavigationView {
            List(managers, id: \.id) { manager in
               
                VStack(alignment: .leading, spacing: 5) {
                    Text(manager.nameOfManager)
                        .fontWeight(.semibold)
                    
                    Text(manager.function)
                    .font(.subheadline)
                    .fontWeight(.light)
                    
                    Text(manager.phoneNumber)
                    .font(.subheadline)
                    .fontWeight(.light)
                    
                    Text(manager.emailAddress)
                    .font(.subheadline)
                    .fontWeight(.light)
                }
            }
            .navigationTitle("Management")
        }
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
