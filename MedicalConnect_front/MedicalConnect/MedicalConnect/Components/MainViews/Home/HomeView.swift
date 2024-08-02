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
    @State private var searchDoctorBySpeciality: Bool = false
    
   
    var body: some View {
        VStack {
                UpperFrame(label: "Encuentra el profesional que necesitas")
                
            
            Button {
                
                searchDoctorBySpeciality = true
                print("Buscar medicos")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.gray)
                        .opacity(0.2)
                      
                
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.secondary)
                       Text("Buscar por especialidad")
                            

                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(.horizontal, 8)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 42)
                .padding(.horizontal, 10)
            }
            .tint(.gray)

            .fullScreenCover(isPresented: $searchDoctorBySpeciality, content: {
                SearchingDoctorView()
            })
            
    


                

                
                ScrollView{
                    HeaderView(title: "Últimos médicos agregados")
                    
                    ForEach(example.doctors, id: \.self){ doctor in
                     
                        NavigationLink(value: Route.login(.home(.details(doctor: doctor)))) {
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
