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
    case login
    case signupForm(UserRoute)
    case home(Doctor)
    
    
    enum UserRoute: Hashable {
        case doctor(user: User)
        case patient(user: User)
    }
    
    
//    case doctorProfile
//    case Appointment
//    case scheduleAppointment
//    case myPeofile
//    case myData
//    case myMedicalHistory
//    case myAppointments
//    case config
    
    enum TabViewRoute: Hashable{
        case home(HomeRoute)
        case configure(Service)
        case profile(Patient)
    }
    
    
    enum HomeRoute: Hashable {
        case list
        case details(doctor: Doctor)
    }
    
    
    enum ConfigureRoute: Hashable {
        case home
        case list
        case details(item: Service)
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
            case( .login, .login):
                return true
                
            case (.signup,  .signup):
                return true
                
            case (.signupForm(let lhsUser), .signupForm(let rhsUser)):
                return lhsUser == rhsUser
                
            case (.home(let lhsDoctor), .home(let rhsDoctor)):
                return lhsDoctor == rhsDoctor
            default:
                return false
  
        }
    }
    

}


extension Route: View {
    
    var body: some View{
        switch self {
            case .login:
                //HomeView()
                MainTabView()
                
                
            case .signup:
                    SignUpView()
                
            case .signupForm(let userRoute):
                
                switch userRoute{
                    
                        
                    case .doctor(user: let user):
                        DoctorSignupFormView(user: user)
                    case .patient(user: let user):
                       // DoctorSignupFormView(user: user)
                        PatientSignupFormView(user: user)
                }

            case .home( let item ):
                ProfileDocView(doctor: item)

        }
    }
    
}
