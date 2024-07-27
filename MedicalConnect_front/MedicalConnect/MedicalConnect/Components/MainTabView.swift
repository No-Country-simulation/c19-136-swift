//
//  MainTabView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct MainTabView: View {
    
   


    
    var body: some View {
        
        TabView {
            
            Group {
                MyProfileView()
                    .tabItem {
                        
                            Image("heart.profile-3")
                                .renderingMode(.template)
                            Text("Mi perfil")
                        
                    }
                HomeView().tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                
                ConfigView()
                    .tabItem {
                        Label("Configuración", systemImage: "gearshape.2.fill")
                    }
            }
        
            
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(named: "mainColor")
            
            UITabBar.appearance().barTintColor = UIColor.gray
          }
       
        .tint(.white)
       
        

    }
}

#Preview {
    MainTabView()
}
