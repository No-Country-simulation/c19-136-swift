//
//  Doctors.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import Foundation

struct Doctor: Hashable, Identifiable {
    var id: UUID = UUID()
    
    var user : User
    var medicalSpeciality: MedicalSpeality
    var professionalLicense: String
    var jobDescription: String
    
    var workDays:[WorkDays]
    var services: [String]
    
    var evaluationData: DoctorEvaluationData
    
}
