//
//  OnBoardingScreen.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 12/04/23.
//

import SwiftUI



struct OnBoardingScreen: View {
    @State private var isShowingTravelModes = false
    var body: some View{
        
        ZStack{
                  Color.black.ignoresSafeArea(.all)
            HStack {
                
                VStack {
                    
                    Button(action: {
                        isShowingTravelModes.toggle()
                            
                    }, label: {
                        Color.clear
                    })
                    .frame(width: 50, height: 50)
                    .padding()
                    .background(Color.accentColor)
                    .cornerRadius(40)
                    .sheet(isPresented: $isShowingTravelModes){
                        ZStack {
                            Text("Temporary Text!!!")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        }
                        
                        
                            
                    }
                    
                    Spacer()
                }
                Spacer()
            }
            
            
            
            
            HStack {
                Image("icon1")
                    .resizable()
                    .frame(width: 170, height: 170)
                
                    .padding(.top, 450)
                Spacer()
            }
            HStack {
                Spacer()
                VStack{
                    
                    Image("icon2")
                        .resizable()
                        .frame(width: 170, height: 170)
                    
                        .padding(.top, 150)
                }
                
            }
            
            HStack {
                VStack{
                    Image("icon3")
                        .resizable()
                        .frame(width: 170, height: 170)
                    Spacer()
                }
                Spacer()
            }
            HStack {
                Spacer()
                VStack{
                    
                    
                    Image("icon4")
                        .resizable()
                        .frame(width: 170, height: 170)
                        .padding(.top, 80)
                    Spacer()
                }
            }
            VStack{
                Text("HELLO👋")
                    .font(.system(size: 68))
                    .foregroundColor(.accentColor)
                    .bold()
                    

                
                
                Text("Have you ever wondered how your iPhone and iPad stay connected even when you move between different networks, such as moving from one location to another?")
                    .font(.system(size: 40))
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.center)
                    .padding(.all, 100)
                    .padding(.bottom, 210)
            }
            
            
            VStack{
                
                LandscapeIcon()
                
                Spacer(minLength: 20)
                
                Slider()
            }
        }
        
    }
    
}







struct Previews_OnBoardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
