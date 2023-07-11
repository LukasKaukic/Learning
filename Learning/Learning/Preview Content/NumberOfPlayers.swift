import SwiftUI


struct Player: Identifiable {
    let id = UUID()
    let imageOfPlayer: String
    let nameOfPlayer: String
    let playersBirth: String
    let heightOfPlayer: String
    let weightOfPlayer: String
    let eliteProspect: URL
    
}


struct playersList  {
    
    static let vutPlayers = [
        Player(
               imageOfPlayer: "daniel-plitko",
               nameOfPlayer: "Daniel Plitko",
               playersBirth: "19.2.2022",
               heightOfPlayer: "188 cm",
               weightOfPlayer: "83 kg",
               eliteProspect: URL(string: "https://www.eliteprospects.com/player/297887/daniel-plitko")!),
    
        Player(
               imageOfPlayer: "vojtech-pernicky",
               nameOfPlayer: "Vojtěch Pernický",
               playersBirth: "19.2.2022",
               heightOfPlayer: "188 cm",
               weightOfPlayer: "83 kg",
               eliteProspect: URL(string: "https://www.eliteprospects.com/player/297887/daniel-plitko")!),
        
        Player(
               imageOfPlayer: "antonin-behal",
               nameOfPlayer: "Antonín Běhal",
               playersBirth: "19.2.2022",
               heightOfPlayer: "188 cm",
               weightOfPlayer: "83 kg",
               eliteProspect: URL(string: "https://www.eliteprospects.com/player/297887/daniel-plitko")!),
    
        Player(
               imageOfPlayer: "no-image",
               nameOfPlayer: "Richard Rogožník",
               playersBirth: "19.2.2022",
               heightOfPlayer: "188 cm",
               weightOfPlayer: "83 kg",
               eliteProspect: URL(string: "https://www.eliteprospects.com/player/297887/daniel-plitko")!),
        
        Player(
               imageOfPlayer: "martin-lasak",
               nameOfPlayer: "Martin Lašák",
               playersBirth: "19.2.2022",
               heightOfPlayer: "188 cm",
               weightOfPlayer: "83 kg",
               eliteProspect: URL(string: "https://www.eliteprospects.com/player/297887/daniel-plitko")!),
        
        Player(
               imageOfPlayer: "no-image",
               nameOfPlayer: "Martin Ďuriš",
               playersBirth: "19.2.2022",
               heightOfPlayer: "188 cm",
               weightOfPlayer: "83 kg",
               eliteProspect: URL(string: "https://www.eliteprospects.com/player/297887/daniel-plitko")!),
        
        Player(
               imageOfPlayer: "no-image",
               nameOfPlayer: "Josef Pöschl",
               playersBirth: "19.2.2022",
               heightOfPlayer: "188 cm",
               weightOfPlayer: "83 kg",
               eliteProspect: URL(string: "https://www.eliteprospects.com/player/297887/daniel-plitko")!),
        
        Player(
               imageOfPlayer: "david-balat",
               nameOfPlayer: "David Balát",
               playersBirth: "19.2.2022",
               heightOfPlayer: "188 cm",
               weightOfPlayer: "83 kg",
               eliteProspect: URL(string: "https://www.eliteprospects.com/player/297887/daniel-plitko")!),
        
        Player(
               imageOfPlayer: "no-image",
               nameOfPlayer: "Lukáš Pernický",
               playersBirth: "19.2.2022",
               heightOfPlayer: "188 cm",
               weightOfPlayer: "83 kg",
               eliteProspect: URL(string: "https://www.eliteprospects.com/player/297887/daniel-plitko")!)
    
    
    ]
}
