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
            OnBoardingPageView(title: "Page 1", description: "oe", imageRef: "gym.bag.fill", currentPage: $step, color: .blue).tag(1)
            OnBoardingPageView(title: "Page 2", description: "oe", imageRef: "wand.and.stars", currentPage: $step, color: .yellow).tag(2)
            OnBoardingPageView(title: "Page 3", description: "oe", imageRef: "iphone.case", currentPage: $step, color: .purple).tag(3)
        }.tabViewStyle(PageTabViewStyle())
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
