//
//  MainTabView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct MainTabView: View {
    
    
    @State var selectedTabView: TabRoute = .home
    
    @EnvironmentObject private var router: TabRouter
    
    var body: some View {
        
        TabView(selection: $selectedTabView) {
            MyProfileView()
                .tabItem {  Image("heart.profile-3")
                        .renderingMode(.template)
                    Text("Mi perfil") }
                .tag(TabRoute.profile)
            
            HomeView()
                .tabItem { Label("Home", systemImage: "house.fill") }
                .tag(TabRoute.home)
            
            ConfigView()
                .tabItem { Label("Configuración", systemImage: "gearshape.2.fill") }
                .tag(TabRoute.settings)
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(named: "mainColor")
            
            UITabBar.appearance().barTintColor = UIColor.gray
        }
        .navigationBarBackButtonHidden()
        .tint(.babyBlue200)
        .onChange(of: selectedTabView) { oldValue, newValue in
            print("From \(oldValue) to \(newValue) ")
        }
    }
}

#Preview {
    MainTabView()
        .environmentObject(TabRouter())
}
