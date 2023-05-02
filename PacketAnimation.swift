//
//  PacketAnimation.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 16/04/23.
//



import SwiftUI

struct PacketAnimation: View {
    @State private var iconOffset1 = CGSize(width: 0, height: 0)
    @State private var isHidden1 = false
    @State private var iconOffset2 = CGSize(width: 0, height: 0)
    @State private var isHidden2 = false
    @State private var iconOffset3 = CGSize(width: 0, height: 0)
    @State private var isHidden3 = false
    @State private var iconOffset4 = CGSize(width: 0, height: 0)
    @State private var isHidden4 = false
    @State private var iconOffset5 = CGSize(width: 0, height: 0)
    @State private var isHidden5 = false
    @State private var iconOffset6 = CGSize(width: 0, height: 0)
    @State private var isHidden6 = false
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Image(systemName: "mail.fill")
                .foregroundColor(.accentColor)
                .font(.system(size: 40))
                .offset(iconOffset1)
                .opacity(isHidden1 ? 0 : 1)
            
            Image(systemName: "mail.fill")
                .foregroundColor(.accentColor)
                .font(.system(size: 40))
                .offset(iconOffset2)
                .opacity(isHidden2 ? 0 : 1)

            Image(systemName: "mail.fill")
                .foregroundColor(.accentColor)
                .font(.system(size: 40))
                .offset(iconOffset3)
                .opacity(isHidden3 ? 0 : 1)

            Image(systemName: "mail.fill")
                .foregroundColor(.accentColor)
                .font(.system(size: 40))
                .offset(iconOffset4)
                .opacity(isHidden4 ? 0 : 1)

            Image(systemName: "mail.fill")
                .foregroundColor(.accentColor)
                .font(.system(size: 40))
                .offset(iconOffset5)
                .opacity(isHidden5 ? 0 : 1)
            
            Image(systemName: "mail.fill")
                .foregroundColor(.accentColor)
                .font(.system(size: 40))
                .offset(iconOffset6)
                .opacity(isHidden6 ? 0 : 1)
            
            Spacer()
        }
        .onAppear {
            iconOffset1 = CGSize(width: 0, height: 300)
            withAnimation(Animation.easeInOut(duration: 3.0)) {
                iconOffset1 = CGSize(width: -300, height: 0)
            }
            withAnimation(Animation.easeInOut(duration: 0.5).delay(3.0)) {
                isHidden1 = true
            }

            
            iconOffset2 = CGSize(width: -300, height: 0)
            withAnimation(Animation.easeInOut(duration: 3.0).delay(3.5)) {
                iconOffset2 = CGSize(width: 0, height: -300)
            }
            withAnimation(Animation.easeInOut(duration: 0.5).delay(7.5)) {
                isHidden2 = true
            }

            iconOffset3 = CGSize(width: 0, height: -300)
            withAnimation(Animation.easeInOut(duration: 3.0).delay(8.5)) {
                iconOffset3 = CGSize(width: 300, height: 0)
            }
            withAnimation(Animation.easeInOut(duration: 0.5).delay(12.0)) {
                isHidden3 = true
            }

            
            iconOffset4 = CGSize(width: 250, height: 0)
            withAnimation(Animation.easeInOut(duration: 3.0).delay(12.0)) {
                iconOffset4 = CGSize(width: 450, height: -300)
            }
            withAnimation(Animation.easeInOut(duration: 0.5).delay(16.0)) {
                isHidden4 = true
            }

            
            iconOffset5 = CGSize(width: 450, height: -300)
            withAnimation(Animation.easeInOut(duration: 3.0).delay(16.0)) {
                iconOffset5 = CGSize(width: 250, height: 0)
            }
            withAnimation(Animation.easeInOut(duration: 0.5).delay(20.0)) {
                isHidden5 = true
            }

            iconOffset6 = CGSize(width: 250, height: 0)
            withAnimation(Animation.easeInOut(duration: 3.0).delay(20.0)) {
                iconOffset6 = CGSize(width: 0, height: 300)
            }
            withAnimation(Animation.easeInOut(duration: 0.5).delay(24.0)) {
                isHidden6 = true
            }

        }
    }
}




struct PositionSpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
