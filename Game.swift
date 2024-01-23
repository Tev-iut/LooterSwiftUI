//
//  Game.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/19/24.
//

import Foundation

enum GameGenre {
    case mmorpg, rpg, looter, fps, tps, strategy, unset
}

struct Game: Identifiable, Hashable {
    let name: String
    let id: UUID = UUID()
    let genre: GameGenre
    let coverName : String?
    
    static var emptyGame = Game(name: "", genre: .unset, coverName: nil)
}

// Hesitez pas mettre vos propres jeux dans la liste
let availableGames = [
    Game(name: "Elden Ring", genre: .rpg, coverName: "co4jni"),
    Game(name: "Skyrim", genre: .rpg, coverName: "co1tnw"),
    Game(name: "WoW", genre: .mmorpg, coverName: "co68u6"),
    Game(name: "CS:GO", genre: .fps, coverName: "co6996"),
    Game(name: "Diablo IV", genre: .looter, coverName: "co69sm"),
    Game(name: "Diablo 10", genre: .looter, coverName: nil)
]
