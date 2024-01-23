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
    @State var game : Game = Game.emptyGame
    @State var quantity : Int = 1
    @State var type : ItemType = ItemType.unknown
    @State var isAttack : Bool = false
    @State var attackStrength : Int = 0
    
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
            
            Section {
                Picker("Jeu", selection: $game) {
                    ForEach(availableGames, id: \.self) { game in
                        Text(String(describing: game.name).capitalized)
                    }
                }
                Stepper("Combien : \(quantity)", onIncrement: { quantity += 1 }, onDecrement: { quantity -= 1 } )
            }
            
            Section{
                HStack{
                    Text("Type :")
                    Spacer()
                    Text(type.rawValue)
                }
                Picker("Type", selection: $type) {
                    ForEach(ItemType.allCases, id: \.self) { item in
                        Text(String(describing: item.rawValue).capitalized)
                    }
                }
                .pickerStyle(.palette)
            }
            
            Section {
                Toggle(isOn: $isAttack){
                    Text("Item d'attaque ?")
                }
                if isAttack {
                    Stepper("Force d'attaque : \(attackStrength)", onIncrement: { attackStrength += 1}, onDecrement: { attackStrength -= 1 })
                }
            }
            
            Button("Ajouter") {
                let newItem = LootItem(quantity: 1, name: name, type: type, rarity: rarity, game: game)
                inventory.addItem(item: newItem)
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

#Preview {
    AddItemView()
}
