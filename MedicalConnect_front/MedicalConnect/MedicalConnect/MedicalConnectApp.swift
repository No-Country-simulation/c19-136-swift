//
//  MedicalConnectApp.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 25/07/24.
//

import SwiftUI

@main
struct MedicalConnectApp: App {
    let routeManager = TabRouter()
    var body: some Scene {
        WindowGroup {
            //StartingView()
            
//            MainTabView(router: TabRouter())
            MainTabView()
                .environmentObject(routeManager)
          //  SignUpView()
//            OnboardingView()
//                .environmentObject(routeManager)
            
          
        }
    }
}
