//
//  MedicalConnectApp.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 25/07/24.
//

import SwiftUI

@main
struct MedicalConnectApp: App {
    let routeManager = NavigationRouter()
    var body: some Scene {
        WindowGroup {
            //StartingView()
          //  SignUpView()
            OnboardingView()
                .environmentObject(routeManager)
          
        }
    }
}
