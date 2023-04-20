//
//  HelpPage.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 07/04/23.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack() {
                    cardView(img: "1").padding(50)
                    cardView(img: "2").padding(50)
                    cardView(img: "3").padding(50)
                    cardView(img: "4").padding(50)
                }
            }
            .padding()
        }
    }
}

class HelpPage: ObservableObject{
    @Published var selectedTab = "help"
}


struct cardView: View {
    var img: String
    
    var body: some View {
        Image(img)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(20)
            .padding()
    }
}

