//
//  UserManager.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 31/07/24.
//

import Foundation
import Combine

class UserManager: ObservableObject {
    @Published var user: User
    
    @Published var users : [User] = []
    

    @Published var signupAccess : Bool = false
    @Published var verifiedPassword : String = ""
    @Published var selectedTypeOfUser: TypeOfUsers = .patient {
        didSet {
            user.typeOfUser = selectedTypeOfUser
        }
    }

    
    private var cancellables = Set<AnyCancellable>()
    
    init(
        user: User = User(
            name: "",
            email: "",
            password: "",
            phone: "",
            typeOfUser: .patient
        )
    ) {
        self.user = user
        setupValidation()

    }
    
    func setupValidation(){

        
       
        Publishers.CombineLatest4(
            $user.map(\.email),
            $user.map(\.name),
            $user.map(\.password),
            $verifiedPassword
        ).map({ email, name, password, verifiedPassword in
            return !email.isEmpty && !name.isEmpty && !password.isEmpty && password == verifiedPassword
        })
        .assign(to: &$signupAccess)
        
    }
    
    
    

    
    
}



//class PatientManager: ObservableObject {
//    let user: User
//    let patient: Patient
//    init(
//        user: User,
//        patient: Patient(
//            user: User,
//            photo: <#T##URL?#>,
//            birthdate: <#T##Date#>,
//            allergies: <#T##String#>,
//            gender: <#T##Gender#>
//        )
//    ) {
//        self.user = user
//        self.patient = patient
//    }
//    
//    
//    
//}
