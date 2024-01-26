//
//  EditItemView.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/26/24.
//

import SwiftUI

struct EditItemView: View {
    @State var item: LootItem
    
    var body: some View {
        
        Form {
            Text(item.name)
        }
        
        //        Form {
        //            Section {
        //                TextField("Nom de l'objet", text: $item.name)
        //                Picker("Rareté", selection: $item.rarity) {
        //                    ForEach(Rarity.allCases, id: \.self) { rarity in
        //                        Text(String(describing: rarity).capitalized)
        //                    }
        //                }
        //            }
        //
        //            Section {
        //                Picker("Jeu", selection: $item.game) {
        //                    ForEach(availableGames, id: \.self) { game in
        //                        Text(String(describing: game.name).capitalized)
        //                    }
        //                }
        //                Stepper("Combien : \(item.quantity)", onIncrement: { $item.quantity += 1 }, onDecrement: { $item.quantity -= 1 } )
        //            }
        //
        //            Section{
        //                HStack{
        //                    Text("Type :")
        //                    Spacer()
        //                    Text(type.rawValue)
        //                }
        //                Picker("Type", selection: $item.type) {
        //                    ForEach(ItemType.allCases, id: \.self) { item in
        //                        Text(String(describing: item.rawValue).capitalized)
        //                    }
        //                }
        //                .pickerStyle(.palette)
        //            }
        //
        ////            Section {
        ////                Toggle(isOn: item.){
        ////                    Text("Item d'attaque ?")
        ////                }
        ////                if isAttack {
        ////                    Stepper("Force d'attaque : \(attackStrength)", onIncrement: { attackStrength += 1}, onDecrement: { attackStrength -= 1 })
        ////                }
        ////            }
        //
        //            Button("Ajouter") {
        //                //let newItem = LootItem(quantity: 1, name: name, type: type, rarity: rarity, attackStrength: attackStrength, game: game)
        //                //inventory.addItem(item: newItem)
        //                //presentationMode.wrappedValue.dismiss()
        //            }
        //        }
        //
        //    }
    }
}
//#Preview {
//    EditItemView()
//}
