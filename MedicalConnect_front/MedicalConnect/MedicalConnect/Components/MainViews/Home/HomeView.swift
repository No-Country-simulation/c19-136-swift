//
//  HomeView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct HomeView: View {
    let example = TestData()
    let showData = DoctorDataValidations()
    
    
   
    var body: some View {
        VStack {
            NavigationStack {
                UpperFrame(label: "Encuentra el profesional que necesitas")
                
                
                SearchBarView(prompt: "Busca por especialidad", keyboard: .asciiCapable)
                    .padding(.bottom, 10)
                
                ScrollView{
                    HeaderView(title: "Últimos médicos agregados")
                    
                    ForEach(example.doctors, id: \.self){ doctor in
                        
                        
                        DoctorRowView(
                            
                            name: doctor.name,
                            medicalSpeciality: doctor.medicalSpeciality.rawValue,
                            evaluation: showData.getAverageOfEvaluations(doctor: doctor),
                            servicios: doctor.services
                        )
                        
                    }
                }

                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
