//
//  Doctors.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import Foundation

struct Doctors: Hashable, Identifiable {
    let id: ObjectIdentifier
    let name: String
    let email: String
    let password: String
    let phone: String
    let photo: URL?
    let medicalSpecialty: MedicalSpeality
    let professionalLicense: String
    let jobDescription: String
}
