//
//  Reviews.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 28/07/24.
//

import Foundation

struct Review: Hashable, Identifiable {
    let id: UUID = UUID()
    let name: String
    let evaluation: Float
    let reviewDescription: String?
}
