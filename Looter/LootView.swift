//
//  LootView.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/26/24.
//

import SwiftUI

struct LootView: View {
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
            @AppStorage("isOnBoardingDone") var isOnBoardingDone: Bool = false
            Button("Remttre le onboarding a false"){
                isOnBoardingDone = false
            }
        }
    }
}

#Preview {
    LootView()
}
