//
//  HomePage.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 07/04/23.
//

import SwiftUI

class HomePage: ObservableObject{
    @Published var selectedTab = "home"
}


struct Home: View{
    @State private var isShowingSheet = false

    var body: some View{
        ZStack {
            VStack {
                Image("7")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            ZStack {
                ButtonSheetView()
                PacketAnimationButton()
            }
            
        }
//        .onAppear {
//            isShowingSheet = true
//        }
        .sheet(isPresented: $isShowingSheet) {
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
