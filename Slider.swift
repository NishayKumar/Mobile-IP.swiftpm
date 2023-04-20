//
//  Slider.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 15/04/23.
//

import SwiftUI

struct Slider: View{
    
    @State var maxWidth = UIScreen.main.bounds.width - 100
    @State var offset : CGFloat = 0
    var body: some View{
        ZStack{
            Capsule().fill(Color.accentColor.opacity(0.4))
            
            Text("SWIPE TO FIND OUT")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.leading, 30)
            
            HStack{
                Capsule()
                    .fill(Color(.white))
                    .frame(width: calculateWidth() +  75)
                
                Spacer(minLength: 0)
            }
            
            HStack{
                ZStack{
                    Image(systemName: "chevron.right")
                    Image(systemName: "chevron.right").offset(x: -10)
                }
                .foregroundColor(.black)
                .offset(x: 5)
                .frame(width: 65, height: 65)
                .background(.white)
                .clipShape(Circle())
                .offset(x: offset)
                .gesture(DragGesture().onChanged(onChanged(value:)).onEnded(onEnded(value:)))
                Spacer()
            }
        }
        .frame(width: 700, height: 75)
        .padding(.bottom)
    }
    
    func calculateWidth()->CGFloat{
        
        let percent = offset / 700
        return percent * 700
    }
    
    func onChanged(value: DragGesture.Value){
        
        if value.translation.width > 0 && offset <= 700 - 75{
            offset = value.translation.width
        }
    }
    func onEnded(value: DragGesture.Value){
        
        withAnimation(Animation.easeOut(duration: 0.3)){
            if offset > 350 {
                offset = 700 - 75
            }else {
                offset = 0
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.35){
                if offset > 350 {
                    NotificationCenter.default.post(name: NSNotification.Name("Success"), object: nil)
                }
                
            }
            
        }
    }
    
}



