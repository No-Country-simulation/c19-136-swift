//
//  Patient.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import Foundation

struct Patient:Hashable, Identifiable {

    let id = UUID()
    var user : User
    
    var photo: URL?
    var birthdate: Date
    var allergies: String
    var gender: Gender
    
    var paymentMethods: [PaymentMethod]?
}
