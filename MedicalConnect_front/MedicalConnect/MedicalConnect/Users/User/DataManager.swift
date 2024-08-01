//
//  UserManager.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 31/07/24.
//

import Foundation
import Combine


class DataManager: ObservableObject {
    @Published var doctors : [Doctor] = []
    @Published var patients : [Patient] = []
    
}



class UserManager: ObservableObject {
    @Published var user: User
    
    @Published var patient: Patient
    @Published var doctor: Doctor
        
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
        self.patient = Patient(user: user, photo: nil, birthdate: Date(), allergies: "", gender: .FEMALE)
        self.doctor = Doctor(
            user: user,
            medicalSpeciality: .cardiology,
            professionalLicense: "",
            jobDescription: "",
            workDays: [.monday, .wednesday, .friday],
            services: [""],
            evaluationData: DoctorEvaluationData(
                averageOfEvaluations: 0.0,
                numberOfConsults: 0,
                reviews: [Review(
                    name: "E-Connect",
                    evaluation: 0,
                    reviewDescription: "Aún no tiene evaluaciones"
                )]
            )
        )
        
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



    

class DoctorManager: ObservableObject {
    
    @Published var doctor: Doctor
    
    @Published var continueAccess: Bool = false
    
    @Published var addingServiceLabels: String = ""
    
    
    private var cancellables = Set<AnyCancellable>()
    init(
        doctor: Doctor = Doctor(
                        user:User(
                            name: "",
                            email: "",
                            password: "",
                            phone: "",
                            typeOfUser: .doctor
                        ),
                        medicalSpeciality: .gynecology,
                        professionalLicense: "",
                        jobDescription: "",
                        workDays: [.monday, .wednesday, .saturday],
                        services: [""],
                        evaluationData: DoctorEvaluationData(
                            averageOfEvaluations: 0.0,
                            numberOfConsults: 0,
                            reviews: [Review(
                                name: "E-Connect",
                                evaluation: 0,
                                reviewDescription: "Aún no tiene evaluaciones"
                            )]
        ))
    ) {
        self.doctor = doctor
        setupValidation()
    }
    
    
    
    
    final func setupValidation(){
        
        
        
        Publishers.CombineLatest(
            $doctor.map(\.user.phone),
            $doctor.map(\.professionalLicense)
        
            
            
            
            
        ).map({ phone, professionalLicense in
            
           
            return !phone.isEmpty && !professionalLicense.isEmpty
        })
        .assign(to: &$continueAccess)
        
    }
    
    
    final func saveUserDataInDoctor(userData: User){
        doctor.user = userData
    }
}



//class DoctorManager: ObservableObject {
//    
//    @Published var doctor: Doctor
//    
//    init(){
//        
//        self.doctor = Doctor(
//            user:User(
//                name: "",
//                email: "",
//                password: "",
//                phone: "",
//                typeOfUser: .doctor
//            ),
//            medicalSpeciality:.cardiology,
//            professionalLicense: "",
//            jobDescription: "",
//            workDays: [.monday, .wednesday, .saturday],
//            services: [""],
//            evaluationData: DoctorEvaluationData(
//                averageOfEvaluations: 0.0,
//                numberOfConsults: 0,
//                reviews: [Review(
//                    name: "E-Connect",
//                    evaluation: 0,
//                    reviewDescription: "Aún no tiene evaluaciones"
//                )]
//            )
//            
//            
//        )
//        
//        
//    }
//    
//}


