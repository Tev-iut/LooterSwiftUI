//
//  LootItem.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/19/24.
//

import Foundation

enum ItemType : String, CaseIterable {
    case magic = "⭐️"
    case fire = "🔥"
    case ice = "🧊"
    case wind = "💨"
    case poison = "☠️"
    case thunder = "🌩️"
    case dagger = "🗡️"
    case shield = "🛡️"
    case bow = "🏹"
    case ring = "💍"
    case unknown = "🎲"
}

struct LootItem {
    var id: String {
        self.name
    }
    var quantity: Int = 1
    var name: String
    var type: ItemType
    var rarity: Rarity
    var attackStrength: Int?
    var game: Game
}
