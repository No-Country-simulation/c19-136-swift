//
//  HomeView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct HomeView: View {
    let exampleDoctors: [Doctor] = [
        .init(
            name: "Josefina Díaz",
            email: "josefina_diaz112@example.com",
            password: "123423234",
            phone: "523221984503",
            photo: nil,
            medicalSpecialty: .cardiology,
            professionalLicense: "8877621A",
            jobDescription: "Hace más de 10 años que practico medicina pediátrica y me apasiona trabajar con niños, poder contribuir a su salud se ha convertido en la pasión de mi vida. Me he especializado en pediatría y luego elegí la cardiología para poder cuidar y curar los corazones del mañana. ¡Gracias por elegirme!"
        ),
        .init(
            name: "Josefina Díaz",
            email: "josefina_diaz112@example.com",
            password: "123423234",
            phone: "523221984503",
            photo: nil,
            medicalSpecialty: .cardiology,
            professionalLicense: "8877621A",
            jobDescription: "Hace más de 10 años que practico medicina pediátrica y me apasiona trabajar con niños, poder contribuir a su salud se ha convertido en la pasión de mi vida. Me he especializado en pediatría y luego elegí la cardiología para poder cuidar y curar los corazones del mañana. ¡Gracias por elegirme!"
        ),
        .init(
            name: "Josefina Díaz",
            email: "josefina_diaz112@example.com",
            password: "123423234",
            phone: "523221984503",
            photo: nil,
            medicalSpecialty: .cardiology,
            professionalLicense: "8877621A",
            jobDescription: "Hace más de 10 años que practico medicina pediátrica y me apasiona trabajar con niños, poder contribuir a su salud se ha convertido en la pasión de mi vida. Me he especializado en pediatría y luego elegí la cardiología para poder cuidar y curar los corazones del mañana. ¡Gracias por elegirme!"
        )
    
    ]
    
    var body: some View {
        VStack {
            NavigationStack {
                UpperFrame(label: "Encuentra el profesional que necesitas")
                
                SearchBarView(prompt: "Busca por especialidad", keyboard: .asciiCapable)
                    .padding(.bottom, 10)
                
                HeaderView(title: "Últimos médicos agregados")
                
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
