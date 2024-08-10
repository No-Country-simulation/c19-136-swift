//
//  TabRouter.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 07/08/24.
//

import Foundation
import SwiftUI

class TabRouter:  ObservableObject {
//    @Published var homeNavigation: [HomeRoute] = []
//    @Published var settingNavigation: [SettingRoute] = []
//    @Published var profileNavigation: [ProfileRoute] = []
    @Published  var path = NavigationPath()
//    var appRouter: AppNavRouter
//    
//    init(appRouter: AppNavRouter = AppNavRouter(with: NavigationPath())) {
//        self.appRouter = appRouter
//    }
    
    
    func addHomeRoute(to target: HomeRoute){
        path.append(target)
    }

    
//    func addToProfileRoute( to target: ProfileRoute) {
//        appRouter.navigate(to: target)
//    }
//    
////    func addToHomeRoute( to target: HomeRoute) {
////
////       // appRouter.navigate(to: target)
////    }
//    
//    func addToSetting(to target: SettingRoute){
//        appRouter.navigate(to: target)
//    }
//    
//    func navigate( to target: TabRoute){
//        appRouter.navigate(to: target)
//    }
//    
//    func pop(){
//        appRouter.pop()
//    }
}
