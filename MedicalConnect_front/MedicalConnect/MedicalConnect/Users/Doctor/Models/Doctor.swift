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
    let medicalSpecialty: MedicalSpeality
    let professionalLicense: String
    let jobDescription: String
}
