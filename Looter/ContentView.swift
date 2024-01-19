//
//  ContentView.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/19/24.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: LooterDocument
    
    @State var loot = ["Épée", "Bouclier", "Armure"]
    @State var showAddItemView : Bool = false
    
    func addItem() {
        loot.append("Magie de feu")
    }

    var body: some View {
        NavigationStack {
            List {
                Button(action: {
                    addItem()
                }, label: {
                    Text("Ajouter")
                })
                ForEach(loot, id: \.self) { item in
                    Text(item)
                }
            }.sheet(isPresented: $showAddItemView, content: {
                AddItemView()
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
    }
}

#Preview {
    ContentView(document: .constant(LooterDocument()))
}
