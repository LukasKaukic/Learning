//
//  CavalierManagement.swift
//  Learning
//
//  Created by Lukáš Kaukič on 20.06.2023.
//

import SwiftUI

struct Management: Identifiable {
        let id = UUID()
        let nameOfManager: String
        let phoneNumber: String
        let emailAddress: String
        let function: String
}

struct managementList {
    
    static let vutManagement = [
    Management(nameOfManager: "Daniel Jochman",
               phoneNumber: "Phone number: +420123123123",
               emailAddress: "Email address: d.jochman@vut.cz",
               function: "Function: Manager"),
    
    Management(nameOfManager: "Daniel Jochman",
               phoneNumber: "Phone number: +420123123123",
               emailAddress: "Email address: d.jochman@vut.cz",
               function: "Function: Manager"),
    
    Management(nameOfManager: "Daniel Jochman",
               phoneNumber: "Phone number: +420123123123",
               emailAddress: "Email address: d.jochman@vut.cz",
               function: "Function: Manager"),
    
    Management(nameOfManager: "Daniel Jochman",
               phoneNumber: "Phone number: +420123123123",
               emailAddress: "Email address: d.jochman@vut.cz",
               function: "Function: Manager"),
    
    Management(nameOfManager: "Daniel Jochman",
               phoneNumber: "Phone number: +420123123123",
               emailAddress: "Email address: d.jochman@vut.cz",
               function: "Function: Manager"),
    
    Management(nameOfManager: "Daniel Jochman",
               phoneNumber: "Phone number: +420123123123",
               emailAddress: "Email address: d.jochman@vut.cz",
               function: "Function: Manager"),
    ]
}

