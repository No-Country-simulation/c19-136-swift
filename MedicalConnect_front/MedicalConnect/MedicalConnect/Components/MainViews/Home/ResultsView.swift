//
//  ResultsView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct ResultsView: View {
    let example = TestData()
    let showData = ShowData()

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
                            
                            
                            CardAboutDoctorView(
                                name: doctor.name,
                                evaluation: showData.getAverageOfEvaluations(doctor: doctor),
                                medicalSpeciality: doctor.medicalSpeciality.rawValue,
                                servicios: doctor.services,
                                workDays: doctor.workDays,
                                numberOfConsults: showData.getNumberOfConsults(doctor: doctor),
                                jobDescription: doctor.jobDescription
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
