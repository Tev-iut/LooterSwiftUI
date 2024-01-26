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
            OnBoardingPageView(title: "Page1", description: "oe", imageRef: "co6996", currentPage: $step).tag(1)
            OnBoardingPageView(title: "Page2", description: "oe", imageRef: "co6996", currentPage: $step).tag(2)
            OnBoardingPageView(title: "Page3", description: "oe", imageRef: "co6996", currentPage: $step).tag(3)
        }.tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    OnboardingView()
}
