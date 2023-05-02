//
//  HomePage.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 07/04/23.
//

import SwiftUI

class HomePage: ObservableObject{
    @Published var selectedTab = "home"
    @Published var isShowingSheet = false
}


struct Home: View{
    @StateObject var homePage = HomePage() // add an instance of HomePage
    
    static var sheetHasBeenPresented = false
    var body: some View {
        ZStack {
            VStack {
                Image("7")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            ButtonSheetView()
            PacketAnimationButton() // start button for packet animation
        }
        .onAppear {
            print(Home.sheetHasBeenPresented)
            if !Home.sheetHasBeenPresented {
                homePage.isShowingSheet = true
                Home.sheetHasBeenPresented = true
            }
            print(Home.sheetHasBeenPresented)
        }
        .sheet(isPresented: $homePage.isShowingSheet) {
            IntroSheetView()
        }
        
    }
}

struct Previews_HomePage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
