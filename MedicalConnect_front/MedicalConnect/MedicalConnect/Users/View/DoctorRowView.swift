//
//  DoctorRowView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct DoctorRowView: View {
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
    let name:  String
    let medicalSpeciality: String
    let photo: String
    let evaluation: String
    let servicios: [String]
    var body: some View {

            
            HStack{
                VStack(alignment: .leading){
                    Text(name)
                        .font(Font.custom("Montserrat-SemiBold", size: 20, relativeTo: .title))
                    
                    Group {
                        Text(medicalSpeciality)
                            .font(Font.custom("Montserrat-Regular", size: 14, relativeTo: .subheadline))
                        
                        DoctorServicesCardView(services: servicios)
                            .font(Font.custom("Montserrat-Regular", size: 12, relativeTo: .subheadline))
                            

                    }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        
        
                }
                .padding(.horizontal, 12)
                
                VStack(alignment: .center){
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)

                        
                    Label("\(evaluation)/5", systemImage: "star.fill")
                        .font(Font.custom("Montserrat-SemiBold", size: 14,relativeTo: .subheadline))
                        .environment(\.layoutDirection, .rightToLeft)
                        
                }
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(Color(.babyBlue300), in: RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))

            .padding(.horizontal, 12)
        
    }
}

#Preview {
    DoctorRowView(name: "Josefina Díaz",medicalSpeciality: MedicalSpeality.pediatrics.rawValue, photo: "person.fill", evaluation: "4.78", servicios: ["Cardiología pediátrica", "Nefrología pediátrica"] )
}
