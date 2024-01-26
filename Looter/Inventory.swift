//
//  Inventory.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/26/24.
//

import Foundation

class Inventory : ObservableObject {
    
    @Published var loot: [LootItem] = [
        LootItem(quantity: 1, name: "Épée de feu", type: .fire, rarity: .rare, attackStrength: 10, game: availableGames[0]),
        LootItem(quantity: 2, name: "Bouclier de glace", type: .ice, rarity: .common, attackStrength: 5, game: availableGames[1]),
        LootItem(quantity: 3, name: "Anneau de vent", type: .wind, rarity: .legendary, attackStrength: 15, game: availableGames[2]),
    ]
    
    func addItem(item: LootItem) {
        loot.append(item)
    }
}
