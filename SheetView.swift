//
//  SheetView.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 17/04/23.
//

import SwiftUI



struct ButtonSheetView: View {
    
        @State private var myFlags = Array(repeating: false, count: 6)
//    let Internet = myFlags[0]
//    let homeAgent = myFlags[1]
//    let foreignAgent = myFlags[2]
//    let correspondentNode = myFlags[3]
//    let tunnel = myFlags[5]
//    let mobileNode = myFlags[4]
    
    
    
    var body: some View{
        
        
//---------------------------Internet
        GeometryReader { geometry in
            Group {
                Button(action: {
                    myFlags[0].toggle()
                }, label: {
                    Color.clear

                })
                .frame(width: geometry.size.width * 0.14, height: geometry.size.height * 0.25)
                .sheet(isPresented: $myFlags[0]) {
                    ZStack {
                        Color.black
                        VStack {
                            Spacer()
                            Text("An 'Internet' is a the global network of interconnected computer networks that allows users to connect to and communicate with other devices, services, and websites around the world")
                                .foregroundColor(.accentColor)
                                .font(.system(size: 50))
                                .multilineTextAlignment(.center)
                            Spacer()
                            Button(action: {
                                myFlags[0] = false
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
            .position(x: geometry.size.width * 0.480, y: geometry.size.height * 0.410)
        }
//--------------------------Internet
//--------------------------Home Agent
        GeometryReader { geometry in
            Group {
                Button(action:{
                    myFlags[1].toggle()
                },label: {
                    Color.clear

                })
                .frame(width: geometry.size.width * 0.24, height: geometry.size.height * 0.15)
                .sheet(isPresented: $myFlags[1]){
                

                    ZStack {
                        Color.black
                        
                        VStack {
                            Spacer()
                            Text("A 'Home Agent' is like a friendly guidepost that helps a mobile device stay connected to its home network, acting as a router that the mobile device was originally connected to.")
                                .foregroundColor(.accentColor)
                                .font(.system(size: 50))
                                .multilineTextAlignment(.center)
                            Spacer()
                            Button(action: {
                                myFlags[1] = false
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
                        }                    }
                }
            }
            .position(x: geometry.size.width * 0.210, y: geometry.size.height * 0.460)
        }
//--------------------------Home Agent
//--------------------------Foreign agent
        GeometryReader { geometry in
            Group {
                Button(action:{
                    myFlags[2].toggle()
                },label: {
                    Color.clear
                })
                .frame(width: geometry.size.width * 0.24, height: geometry.size.height * 0.15)
                .sheet(isPresented: $myFlags[2]){
                

                    ZStack {
                        Color.black
                        VStack {
                            Spacer()
                            Text("A 'Foreign Agent' is like a helpful intermediary that helps a mobile device connect to a different network, acting as a router that enables the device to communicate with networks outside of its original home network.")
                                .foregroundColor(.accentColor)
                                .font(.system(size: 50))
                                .multilineTextAlignment(.center)
                            Spacer()
                            Button(action: {
                                myFlags[2] = false
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
            .position(x: geometry.size.width * 0.755, y: geometry.size.height * 0.470)
        }
        
//--------------------------Foreign agent
        
//-------------------------Correspondent Node
        GeometryReader { geometry in
            Group {
                Button(action:{
                    myFlags[3].toggle()
                },label: {
                    Color.clear
                })
                .frame(width: geometry.size.width * 0.18, height: geometry.size.height * 0.16)
                .sheet(isPresented: $myFlags[3]){
                

                    ZStack {
                        Color.black
                        VStack {
                            Spacer()
                            Text("A 'Correspondent Node' is like a friendly communicator that exchanges information with a mobile device, acting as a destination or recipient for the device's communications.")
                                .foregroundColor(.accentColor)
                                .font(.system(size: 50))
                                .multilineTextAlignment(.center)
                            Spacer()
                            Button(action: {
                                myFlags[3] = false
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
            .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.875)
        }
//-------------------------Correspondent Node
//-------------------------Tunnel
        GeometryReader { geometry in
            Group {
                Button(action:{
                    myFlags[4].toggle()
                },label: {
                    Color.clear

                    
                })
                .frame(width: geometry.size.width * 0.35, height: geometry.size.height * 0.21)
                .sheet(isPresented: $myFlags[4]){
                

                    ZStack {
                        Color.black
                        VStack {
                            Spacer()
                            Text("A 'Tunnel' is a virtual pathway that securely transports data between networks or devices, keeping it private and secure during transmission.")
                                .foregroundColor(.accentColor)
                                .font(.system(size: 50))
                                .multilineTextAlignment(.center)
                            Spacer()
                            Button(action: {
                                myFlags[4] = false
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
            .position(x: geometry.size.width * 0.48, y: geometry.size.height * 0.13)
        }
        
//-------------------------Tunnel
//-------------------------Mobile Node
        GeometryReader { geometry in
            Group {
                Button(action:{
                    myFlags[5].toggle()
                },label: {
                    Color.clear

                    
                })
                .frame(width: geometry.size.width * 0.15, height: geometry.size.height * 0.25)
                .sheet(isPresented: $myFlags[5]){
                

                    ZStack {
                        Color.black
                        VStack {
                            Spacer()
                            Text("A 'Mobile Node' is a device, such as a smartphone, that is capable of changing its network location while maintaining connectivity to the internet.")
                                .foregroundColor(.accentColor)
                                .font(.system(size: 50))
                                .multilineTextAlignment(.center)
                            Spacer()
                            Button(action: {
                                myFlags[5] = false
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
            .position(x: geometry.size.width * 0.85, y: geometry.size.height * 0.18)
        }
//-------------------------Mobile Node
        

    }
}

struct Previews_SheetView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
