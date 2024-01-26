//
//  OnboardingView.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/26/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var step = 1
    
    var body: some View {
        TabView(selection: $step) {
            OnBoardingPageView(title: "Gérer ses loots", description: "Gestion du loot", imageRef: "gym.bag.fill", currentPage: $step, color: .blue).tag(1)
            OnBoardingPageView(title: "Votre wishlist", description: "Ajout à la wishlist", imageRef: "wand.and.stars", currentPage: $step, color: .yellow).tag(2)
            OnBoardingPageView(title: "En un coup d'oeil", description: "oe", imageRef: "iphone.case", currentPage: $step, color: .purple).tag(3)
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    OnboardingView()
        .preferredColorScheme(.light)
        .previewDisplayName("Light Mode")
}

#Preview {
    OnboardingView()
        .preferredColorScheme(.dark)
        .previewDisplayName("Dark Mode")
}
