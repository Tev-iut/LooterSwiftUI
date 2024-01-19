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
}

struct AddItemView: View {
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
        }
    }
}

#Preview {
    AddItemView()
}
