//
//  BlurView.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 16/04/23.
//

import SwiftUI

struct Blurness: View{
    @State private var blurVisible = true
    var body: some View{
        if blurVisible {
            BlurView(style: .systemMaterial, intensity: 0.9)
                .edgesIgnoringSafeArea(.all)
            // Button to toggle blur
            
            VStack {
                Text("Rotate!")
                    .foregroundColor(.accentColor)
                    
                Spacer()
                Button(action: {
                    
                    blurVisible.toggle()
                }) {
                    Text(blurVisible ? "Okay" : "Show Blur")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
//                    Spacer()
            }
        }
        
        
        
        
        
        
    }
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    var intensity: CGFloat

    func makeUIView(context: Context) -> UIVisualEffectView {
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.alpha = intensity
        return blurView
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
        uiView.alpha = intensity
    }
}
