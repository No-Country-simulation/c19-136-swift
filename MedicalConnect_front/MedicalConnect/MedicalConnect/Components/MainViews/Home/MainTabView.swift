//
//  MainTabView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State var selectedTabView: Route.TabViewRoute = .home(.list)
    
    var body: some View {
        
        
        
        
        TabView(selection: $selectedTabView) {
            MyProfileView()
                .tabItem {  Image("heart.profile-3")
                        .renderingMode(.template)
                    Text("Mi perfil") }
                .tag(Route.TabViewRoute.profile(.list))
            
            HomeView()
                .tabItem { Label("Home", systemImage: "house.fill") }
                .tag(Route.TabViewRoute.home(.list))
            
            ConfigView()
                .tabItem { Label("Configuración", systemImage: "gearshape.2.fill") }
                .tag(Route.TabViewRoute.configure(.list))
            
            
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(named: "mainColor")
            
            UITabBar.appearance().barTintColor = UIColor.gray
        }
        .navigationBarBackButtonHidden()
        .tint(.babyBlue200)
        
        
        
    }
}

#Preview {
    MainTabView()
}
