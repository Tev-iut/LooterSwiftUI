//
//  LootDetailView.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/23/24.
//

import SwiftUI

struct LootDetailView: View {
    @State var item: LootItem
    @State private var isAnimated = false
    @State var showAddItemView : Bool = false
    
    var body: some View {
        VStack{
            ZStack {
                Text(item.type.rawValue)
                    .foregroundColor(item.rarity.color)
                    .frame(width: 100, height: 100)
                    .font(.system(size: 40))
            }
            .background(Color(item.rarity.color))
            .cornerRadius(30)
            .padding(50)
            .font(.largeTitle)
            .rotation3DEffect(
                .degrees(isAnimated ? 360 : 0),
                axis: (x:1.0, y:0.5, z:0.0)
            )
            .animation(.spring.delay(0.4), value: isAnimated)
            .shadow(color: Color(item.rarity.color), radius: isAnimated ? 30 : 0)
            .animation(.bouncy.delay(0.2), value: isAnimated)
            .task {
                isAnimated = true
            }
            
            
            Text(item.name)
                .font(.system(size: 30))
                .bold()
                .foregroundStyle(item.rarity.color)
            
            if (item.rarity == Rarity.unique){
                VStack{
                    Text("Item Unique 🏆")
                        .frame(width: 300, height: 40)
                        .font(.system(size: 20))
                        .foregroundStyle(.white)
                        .bold()
                }
                .background(Color(item.rarity.color))
                .cornerRadius(10)
            }
            
            NavigationStack {
                List {
                    Section {
                        
                        HStack {
                            if (item.game.coverName != nil) {
                                Image(item.game.coverName!)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 58)
                                    .cornerRadius(4)
                            } else {
                                ZStack {
                                    Rectangle ()
                                        .foregroundStyle(.gray)
                                        .frame(width: 40, height: 58)
                                        .cornerRadius(4)
                                        .opacity(0.4)
                                    
                                    Image(systemName: "rectangle.slash")
                                        .foregroundColor(.black)
                                        .opacity(0.4)
                                        .frame(height: 58)
                                        .cornerRadius(4)
                                }
                            }
                            
                            Text(item.game.name)
                        }
                        
                        Text("In-game : \(item.name)")
                        if (item.attackStrength != nil) {
                            Text("Puissance (ATQ) : \(item.attackStrength!)")
                        }
                        Text("Possédé(s) : \(item.quantity)")
                        Text("Rareté : \(item.rarity.rawValue)")
                        
                    } header : {
                        Text("INFORMATIONS")
                    }
                    
                }
            }
        }
        .sheet(isPresented: $showAddItemView, content: {
            EditItemView(item: item)
        })
        .toolbar(content: {
            ToolbarItem(placement: ToolbarItemPlacement.automatic) {
                Button(action: {
                    showAddItemView.toggle()
                }, label: {
                    Image(systemName: "pencil")
                    Text("Edit")
                })
            }

        })
    }
}

#Preview {
    LootDetailView(item: LootItem(quantity: 1, name: "oe", type: ItemType.dagger, rarity: Rarity.unique, game: availableGames[5]))
}
