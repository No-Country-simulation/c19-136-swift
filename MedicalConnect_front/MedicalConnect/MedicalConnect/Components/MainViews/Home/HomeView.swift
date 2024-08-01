//
//  HomeView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var dataManager = DataManager()
    
    let example = TestData()
    let showData = DoctorDataValidations()
    
    
   
    var body: some View {
        VStack {
                UpperFrame(label: "Encuentra el profesional que necesitas")
                
                
                SearchBarView(prompt: "Busca por especialidad", keyboard: .asciiCapable)
                    .padding(.bottom, 10)
                
                ScrollView{
                    HeaderView(title: "Últimos médicos agregados")
                    
                    ForEach(example.doctors, id: \.self){ doctor in
                
                        NavigationLink(value: Route.results(doctor)) {
                            DoctorRowView(doctor: doctor)
                        }
                    }
                }.tint(.black)

                Spacer()
        }
        .navigationDestination(for: Route.self, destination: {$0})
    }
}

#Preview {
    HomeView()
}
