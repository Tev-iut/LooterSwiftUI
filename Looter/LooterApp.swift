//
//  LooterApp.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/19/24.
//

import SwiftUI

@main
struct LooterApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: LooterDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
