//
//  ResultsView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct ResultsView: View {
    let example = TestData()
    let showData = DoctorDataValidations()

    var body: some View {
        VStack {
            NavigationStack {
                UpperFrame(label: "Resultados")
                
                ScrollView{
                    ForEach(example.doctors, id:\.self){ doctor in
                        
                        
                        NavigationLink(value: doctor) {
                            DoctorRowView(
                                name: doctor.name,
                                medicalSpeciality: doctor.medicalSpeciality.rawValue,
                                evaluation: showData.getAverageOfEvaluations(doctor: doctor),
                                servicios: doctor.services
                            )
                        }
                        .navigationDestination(for: Doctor.self) { doctor in
                            
                            
                            ProfileDocView(
                                name: doctor.name,
                                evaluation: showData.getAverageOfEvaluations(doctor: doctor),
                                medicalSpeciality: doctor.medicalSpeciality.rawValue,
                                services: doctor.services,
                                workDays: doctor.workDays,
                                numberOfConsults: showData.getNumberOfConsults(doctor: doctor),
                                jobDescription: doctor.jobDescription,
                                reviews: showData.getReviews(doctor: doctor) as! [Review]
                            )
                            
                            
                            
                        }
                        .tint(.black)
                  
                     
                          
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ResultsView()
}
