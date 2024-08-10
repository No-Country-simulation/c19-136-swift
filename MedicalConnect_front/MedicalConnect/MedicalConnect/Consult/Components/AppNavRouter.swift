//
//  AppNavRouter.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 07/08/24.
//

import Foundation
import SwiftUI

public class AppNavRouter: ObservableObject {
    
    @Published var path: NavigationPath
    init(with path: NavigationPath) {
        self.path = path
    }
    
    func navigate(to destination: any Hashable) {
        path.append(destination)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func navigateToRoot() {
        path.removeLast(path.count)
    }
    
}


protocol ModuleRouter {
    var appRouter: AppNavRouter { get }
}

