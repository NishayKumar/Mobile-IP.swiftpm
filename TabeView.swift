//
//  TabeViewHelpPage.swift
//  Mobile-IP
//
//  Created by Nishay Kumar on 07/04/23.
//

import SwiftUI

struct TabBar: View {
    
    @State private var isShowingSheet = false
    @StateObject var pageData = HomePage()
    @Namespace var animation
    
    
    var body: some View {
        VStack{
            if pageData.selectedTab == "help" {
                IntroView()
            }else{
                Home()
            }
            Spacer()
            HStack{
                Image(systemName: "house.circle")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(pageData.selectedTab == "home" ? .black: .black)
                    .frame(width: 80, height: 45)
                    .background(
                        ZStack {
                            if pageData.selectedTab != "home"{
                                Color.clear
                            }else{
                                Color.white
                                    .cornerRadius(10)
                                    .matchedGeometryEffect(id: "Tab", in: animation)
                            }
                        }
                    )
                    .onTapGesture {
                        withAnimation{
                            pageData.selectedTab = "home"
                        }
                    }
                
                Image(systemName: "questionmark.circle")
                    .font(.system(size:30, weight: .bold))
                    .foregroundColor(pageData.selectedTab == "help" ? .black: .accentColor)
                    .frame(width: 80, height: 45)
                    .background(
                        ZStack {
                            if pageData.selectedTab != "help"{
                                Color.clear
                            }else{
                                Color.white
                                    .cornerRadius(10)
                                    .matchedGeometryEffect(id: "Tab", in: animation)
                            }
                        }
                    )
                    .onTapGesture {
                        withAnimation{
                            pageData.selectedTab = "help"
                        }
                    }
            }
            .background(Color.black.opacity(0.15))
            .cornerRadius(33)
            .padding(.top)
            
            
        }
       
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(pageData.selectedTab == "home" ? Color.black.ignoresSafeArea(.all, edges: .all) : Color.accentColor.ignoresSafeArea(.all, edges: .all))
        
        
    }
}

