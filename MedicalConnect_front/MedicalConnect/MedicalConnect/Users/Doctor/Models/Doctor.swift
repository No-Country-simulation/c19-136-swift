//
//  Doctors.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import Foundation

struct Doctor: Hashable, Identifiable {
    let id: UUID = UUID()
    let name: String
    let email: String
    let password: String
    let phone: String
    let medicalSpeciality: MedicalSpeality
    let professionalLicense: String
    let jobDescription: String
    
    let workDays:[String]
    let services: [String]
    
    let evaluationData: DoctorEvaluationData


}
