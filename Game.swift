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
    Game(name: "Elden Ring", genre: .rpg, coverName: "Assets/co4jni.png"),
    Game(name: "Skyrim", genre: .rpg, coverName: "hAssets/co1tnw.png"),
    Game(name: "WoW", genre: .mmorpg, coverName: "Assets/co68u6.png"),
    Game(name: "CS:GO", genre: .fps, coverName: "Assets/co6996.png"),
    Game(name: "Diablo IV", genre: .looter, coverName: "Assets/co69sm.png")
]
