//
//  IntroSheetView.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 20/04/23.
//

import SwiftUI

struct IntroSheetView: View {
    @State private var isShowingSheet = false
    var body: some View {
        Group {
            ZStack {
                Color.black
                VStack {
                    Text("MOBILE INTERNET PROTOCOL")
                        .font(.system(size: 45))
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                        .padding() 
                    Text("""
It's a communication protocol that lets users maintain the same IP address even when they switch from one network to another. This ensures that their ongoing communication sessions and connections won't be disrupted.

""")
                    .foregroundColor(customColor1)
                    .font(.system(size: 35))
                    .multilineTextAlignment(.center)
                    Text("But wait, what is an IP address?🤔")
                        .foregroundColor(.accentColor)
                        .font(.system(size: 40))
                        .multilineTextAlignment(.center)
                        .padding()
                    Text("""
So basically, an IP address is like your computer's phone number on the internet. It helps other computers know where to send stuff to.

Alright folks, Let's explore the world of Mobile IP and bring it to life! 🌊📲
""")
                    .foregroundColor(customColor1)
                    .font(.system(size: 35))
                    .multilineTextAlignment(.center)
                    .padding()
                    Spacer()
                    
                    Button(action: {
                        isShowingSheet.toggle()
                    }) {
                        Text("OKAY")
                            .font(.title)
                            .fontWeight(.black)
                            .padding(10.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10.0)
                                    .stroke(lineWidth: 6.0)
                            )
                    }
                    .padding(.bottom,80)
                    
                }
                
            }
        }

    }
}
