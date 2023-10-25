//
//  ProfileScreen.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        Image(systemName: "person.crop.circle.fill")
             .font(.system(size: 80))
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
