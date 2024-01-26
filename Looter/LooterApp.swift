//
//  LooterApp.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/19/24.
//

import SwiftUI

@main
struct LooterApp: App {
    
    @AppStorage("isOnBoardingDone") var isOnBoardingDone: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isOnBoardingDone {
                ContentView()
            } else {
                OnboardingView()
            }
        }
    }
}
