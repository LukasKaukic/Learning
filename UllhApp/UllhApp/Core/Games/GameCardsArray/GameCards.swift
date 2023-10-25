//
//  GameCards.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import Foundation

struct Game {
        let homeTeam: Team
        let awayTeam: Team
        let score: String
        let id: Int
}

let gameOne = Game(
    homeTeam: "UK Prague",
    awayTeam: "VUT Cavaliers",
    homeTeamImage: "uk-logo",
    awayTeamImage: "cavs-logo",
    score: "0-0",
    id: 1
)

let gameTwo = Game(
    homeTeam: "Riders Pardubice",
    awayTeam: "Bo Ostrava",
    homeTeamImage: "riders-logo",
    awayTeamImage: "bo-ostrava",
    score: "0-0",
    id: 2
)

let gameThree = Game(
    homeTeam: "HC Muni",
    awayTeam: "Nort Wings",
    homeTeamImage: "muni-logo",
    awayTeamImage: "wings-logo",
    score: "0-0",
    id: 3
)

let gameFour = Game(
    homeTeam: "Black Dogs",
    awayTeam: "HC Olomouc",
    homeTeamImage: "hotdogs-logo",
    awayTeamImage: "olmik-logo",
    score: "0-0",
    id: 4
)

let gameFive = Game(
    homeTeam: "Akademici Plzeň",
    awayTeam: "Prague Engineers",
    homeTeamImage: "plzen-logo",
    awayTeamImage: "engineers-logo",
    score: "0-0",
    id: 5
)

struct Team {
    let teamName: String
    let id: Int
    let image: String
}

let cavaliers = Teams(teamName: "Vut Cavaliers", id: 1)
let ukacko = Teams(teamName: "Uk Prague", id: 2)
let dogsBlack = Teams(teamName: "Black Dogs", id: 3)
let akademici = Teams(teamName: "Akademici Plzeň", id: 4)
let inzenyri = Teams(teamName: "Engineers Prague", id: 5)
let ostrava = Teams(teamName: "Bo Ostrava", id: 6)
let wings = Teams(teamName: "North Wings", id: 7)
let olmik = Teams(teamName: "HC Olomouc", id: 8)
let pardubky = Teams(teamName: "Riders Pardubice", id: 9)
let municko = Teams(teamName: "HC Muni", id: 10)






    
