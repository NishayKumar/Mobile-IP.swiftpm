//
//  LandscapeIcon.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 07/04/23.
//

import SwiftUI

struct LandscapeIcon: View {
    @State private var isAnimation = false
    var body: some View{
        
        
        ZStack {
            VStack {
                Spacer()
                Text("Rotate your device for better experience")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.accentColor)
                    
                    
                Image(systemName: "ipad.gen1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(isAnimation ? .accentColor : customColor1)
                    .frame(width: 50, height: 50)
                    .padding()
                    .scaleEffect(isAnimation ? 2.0 : 2.0)
                    .rotationEffect(isAnimation ? Angle(degrees: 90) : Angle(degrees: 0))
                    .animation(Animation.spring(), value: isAnimation)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isAnimation.toggle()
                    
                }
                
            }
            
        }
        
    }
}
