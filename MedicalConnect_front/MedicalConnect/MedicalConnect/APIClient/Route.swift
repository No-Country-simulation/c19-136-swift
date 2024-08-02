//
//  Route.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 31/07/24.
//

import Foundation
import SwiftUI

enum Route {
    
    
    case signup
    case login(TabViewRoute)
    case signupForm(UserRoute)
    //case home(Doctor)
    
    
    enum UserRoute: Hashable {
        case doctor(user: User)
        case patient(user: User)
    }
    
    
    enum TabViewRoute: Hashable{
        case home(HomeRoute)
        case configure(ConfigureRoute)
        case profile(ProfileRoute)
    }
    
    
    enum HomeRoute: Hashable {
        case list
        case details(doctor: Doctor)
    }
    
    
    enum ConfigureRoute: Hashable {
        case list
        case details(item: Service)
        //case details()
    }
    
    
    enum ProfileRoute: Hashable {
        case list
        case details(item: MyMenu)
        
    }
    
}

extension Route: Hashable {

    
    func hash(into hasher: inout Hasher) {
       hasher.combine(self.hashValue)
    }
    
    
    static func == (lhs: Route, rhs: Route) -> Bool {
        switch (lhs, rhs) {
            case( .login(let lhsTabViewRoute), .login(let rhsTabViewRoute)):
                return  lhsTabViewRoute == rhsTabViewRoute
                
            case (.signup,  .signup):
                return true
                
            case (.signupForm(let lhsUser), .signupForm(let rhsUser)):
                return lhsUser == rhsUser
                
            default:
                return false
  
        }
    }
    

}




extension Route: View {
    
    var body: some View{
        switch self {
            case .login(let tabViewRoute):
                
                switch tabViewRoute {
                    case .home(let option):
                        switch option {
                            case .list:
                                MainTabView()
                            case .details(doctor: let doctor):
                                ProfileDocView(doctor: doctor)
                        }
                    case .configure(let option):
                        switch option{
                            case .list:
                                    MainTabView()
                            case .details(item: let service):
                                ServiceDetailView(service: service)
                                
                        }
                            
                        
                      
        
                    case .profile(let option):
                        switch option{
                            case .list:
                                MainTabView()
                            
                            case .details(let item):
                                switch item.title {
                                    case .myData:
                                        MyDataView()
                                    case .myAppointments:
                                        MyAppointmentsHistoryView()
                                    case .myStudies:
                                        myMedicalStudiesHistoryView()
                                    case .treatments:
                                        MyMedicalRecordsHistory()
                                }
                        }
                
                }

            case .signup:
                    SignUpView()
                
            case .signupForm(let userRoute):
                
                switch userRoute{
                    
                        
                    case .doctor(user: let user):
                        DoctorSignupFormView(user: user)
                    case .patient(user: let user):

                        PatientSignupFormView(user: user)
                }
        }
    }
    
}
