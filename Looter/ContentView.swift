//
//  ContentView.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/19/24.
//

import SwiftUI

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

struct ContentView: View {
    @StateObject var inventory = Inventory()
    
    @State var showAddItemView : Bool = false

    var body: some View {
        NavigationStack {
            List {
                ForEach(inventory.loot, id: \.id) { item in
                    NavigationLink{ LootDetailView(item: item) } label: {
                        HStack{
                            
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(item.rarity.color)
                            Text(item.name + "\n" + "Quantity : \(item.quantity)")
                        
                        Spacer()

                        Text(item.type.rawValue)
                        }
                    }
                }
                }.sheet(isPresented: $showAddItemView, content: {
                    AddItemView().environmentObject(inventory)
                })
                .navigationBarTitle("Loot")
                .toolbar(content: {
                    ToolbarItem(placement: ToolbarItemPlacement.automatic) {
                        Button(action: {
                            showAddItemView.toggle()
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                        })
                    }
                })
            }
        @AppStorage("isOnBoardingDone") var isOnBoardingDone: Bool = false
        Button("Remttre le onboarding a false"){
            isOnBoardingDone = false
        }
    }
}

#Preview {
    ContentView()
}
