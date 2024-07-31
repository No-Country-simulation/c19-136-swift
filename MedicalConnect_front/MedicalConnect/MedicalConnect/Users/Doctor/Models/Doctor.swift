//
//  Doctors.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import Foundation

struct Doctor: Hashable, Identifiable {
    var id: UUID = UUID()
    
    let user : User
    let medicalSpeciality: MedicalSpeality
    let professionalLicense: String
    let jobDescription: String
    
    let workDays:[WorkDays]
    let services: [String]
    
    let evaluationData: DoctorEvaluationData
    
}
