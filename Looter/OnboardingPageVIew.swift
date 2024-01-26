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
    @State var color: Color
    
    var body: some View {
        VStack{
            Text(title).font(.system(size: 40)).bold()
            Text(description)
            ZStack {
                Circle()
                    .frame(height: 200)
                    .foregroundStyle(color)
                Image(systemName: imageRef)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .foregroundStyle(Color(.white))
            }
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 100, height: 50)
                    .foregroundStyle(Color(.blue))
                if (currentPage == 3) {
                    Button("Confirmer") {
                        isOnBoardingDone = true
                    }
                    .foregroundStyle(Color(.white))
                } else {
                    Button("Suivant") {
                        currentPage += 1
                    }
                    .foregroundStyle(Color(.white))
                }
            }
            
        }
    }
}

//#Preview {
//    OnBoardingPageView(title: "Titre", description: "Description", imageRef: "co6996", $state)
//}
