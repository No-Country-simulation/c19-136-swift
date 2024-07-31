//
//  Patient.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import Foundation

struct Patient:Hashable, Identifiable {

    let id = UUID()
    let user : User
    
    let photo: URL?
    let birthdate: Date
    let allergies: String
    let gender: Gender
    
}
