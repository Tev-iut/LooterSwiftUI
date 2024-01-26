//
//  OnBoardingPageView.swift
//  Looter
//
//  Created by Tevin DERVAUX on 1/26/24.
//

import SwiftUI

struct OnBoardingPageView: View {
    
    @AppStorage("isOnBoardingDone") var isOnBoardingDone: Bool = false
    
    @State var title: String
    @State var description: String
    @State var imageRef: String
    @State var isBtnConfirm: Bool = false
    @Binding var currentPage: Int
    
    var body: some View {
        VStack{
            Text(title).font(.system(size: 40)).bold()
            Text(description)
            Image(imageRef)
            
            if (currentPage == 3) {
                Button("Confirmer") {
                    isOnBoardingDone = true
                }
            } else {
                Button("Suivant") {
                    currentPage += 1
                }
            }
            
        }
    }
}

//#Preview {
//    OnBoardingPageView(title: "Titre", description: "Description", imageRef: "co6996", $state)
//}
