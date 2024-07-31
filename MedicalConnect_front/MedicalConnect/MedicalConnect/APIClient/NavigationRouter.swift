//
//  NavigationRouter.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 31/07/24.
//

import Foundation
import SwiftUI

final class NavigationRouter: ObservableObject {
    @Published var routes = [Route]()
    
    func push(to screen: Route) {
        routes.append(screen)
    }
    
    
    func goBack() {
        _ = routes.popLast()
    }
    
    func reset(){
        routes = []
    }
    
}
