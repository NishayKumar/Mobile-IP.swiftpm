//
//  PacketAnimationButtonView.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 17/04/23.
//

import SwiftUI

struct PacketAnimationButton: View {
    @State private var showAnimationButton = false
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                if showAnimationButton {
                    PacketAnimation()
                } else {
                    HStack {
                        Spacer()
                        VStack{
                            Text("Start Visualisation")
                                .font(.system(size: 30))
                                .fontWeight(.heavy)
                                .foregroundColor(customColor1)
                            Button(action: {
                                showAnimationButton.toggle()
                            }) {
                                Circle()
                                    .fill(Color.accentColor)
                                    .frame(width: 70, height: 60)
                                    .overlay(
                                        Image(systemName: "play.fill")
                                            .foregroundColor(.black)
                                    )
                            }
                            .padding(.horizontal, 200)
                        }
                    }
                }
                
            }
        }
        
    }
}
