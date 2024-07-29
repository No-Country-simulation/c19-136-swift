//
//  DoctorEvaluationData.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 28/07/24.
//

import Foundation

struct DoctorEvaluationData: Hashable, Identifiable {
    let id: UUID = UUID()
    let averageOfEvaluations: Float?
    let numberOfConsults: Int?
    let reviews: [Review?]
}






