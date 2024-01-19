//
//  AddItemView.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/19/24.
//

import SwiftUI

enum Rarity: CaseIterable {
    case common
    case uncommon
    case rare
    case epic
    case legendary
    case unique
    
    var color: Color {
        switch self {
        case .common:
            return Color.gray
        case .uncommon:
            return Color.green
        case .rare:
            return Color.blue
        case .epic:
            return Color.purple
        case .legendary:
            return Color.orange
        case .unique:
            return Color.red
        }
    }
}

struct AddItemView: View {
    @EnvironmentObject var inventory: Inventory
    @Environment(\.presentationMode) var presentationMode
    @State var name : String = ""
    @State var rarity : Rarity = Rarity.common
    
    var body: some View {
        Form {
            Section {
                TextField("Nom de l'objet", text: $name)
                Picker("Rareté", selection: $rarity) {
                    ForEach(Rarity.allCases, id: \.self) { rarity in
                        Text(String(describing: rarity).capitalized)
                    }
                }
            }
            Button("Ajouter") {
                let newItem = LootItem(quantity: 1, name: name, type: ItemType.bow, rarity: Rarity.common, game: availableGames[0])
                inventory.addItem(item: newItem)
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}


#Preview {
    AddItemView()
}
