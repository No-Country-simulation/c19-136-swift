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
    
    
    enum UserRoute: Hashable {
        case doctor
        case patient
    }
//    case results
//    case doctorProfile
//    case Appointment
//    case scheduleAppointment
//    case myPeofile
//    case myData
//    case myMedicalHistory
//    case myAppointments
//    case config
    
    
    
    
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
            default:
                return false
  
        }
    }
    

}


extension Route: View {
    
    var body: some View{
        switch self {
            case .login:
                HomeView()
                
            case .signup:
                    SignUpView()
                
            case .signupForm(let user):
                switch user {
                    case .doctor:
                        DoctorSignupFormView()
                    case .patient:
                        PatientSignupFormView()
                }
        }
    }
    
    
}
