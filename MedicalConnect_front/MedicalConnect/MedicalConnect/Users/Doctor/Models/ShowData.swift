//
//  ShowData.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 28/07/24.
//

import Foundation


class ShowData {
    
    
    func getAverageOfEvaluations(doctor: Doctor) -> Float {

        
        guard let average = doctor.evaluationData.averageOfEvaluations else { return 0.00 }
    
        return average
    }
    
    
    func getNumberOfConsults(doctor: Doctor) -> Int {
        guard let consults = doctor.evaluationData.numberOfConsults else { return 0 }
        
        return consults
    }
}
