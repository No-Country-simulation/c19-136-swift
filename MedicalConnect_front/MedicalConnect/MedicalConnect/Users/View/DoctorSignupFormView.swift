//
//  DoctorSignupFormView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct DoctorSignupFormView: View {
    @State var selectedMedicalSpeciality: MedicalSpeality = .cardiology
    
    @State var continueAccess: Bool = false
    
    var body: some View {
        NavigationStack {
            UpperFrame(label: "Te pediremos algunos datos importantes")
            
            ScrollView {
                
                VStack(alignment: .leading, content: {
                    Text("¿Cuál es tu especialidad médica?")
                        .font(Font.custom("Montserrat-SemiBold", size: 14))
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            
                            .stroke(Color("babyBlue-300"), lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                        
                        Picker("Select your gender", selection: $selectedMedicalSpeciality) {
                            ForEach(MedicalSpeality.allCases, id: \.self) { option in
                                Text(option.rawValue)
                                    
                                    
                            }
                        }
                        .padding(.vertical,5)
                        .pickerStyle(.menu)
                        .tint(.black)
                    }
                    
          
                })
                .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                
                
                TextFieldDataView(label: "Cédula Profesional", prompt: "Ingrese su cédula", keyboard: .asciiCapable)
                    .padding(.bottom, 12)
                
                BigFrameTextFieldView(label: "Escribe sobre tu experiencia y servicios", prompt: "Ejemplo: Dermatólogo (Enfermedades de transmisión sexual, Detección precoz de cáncer de piel, Cirugía de la piel, Dermatología cosmética...", keyboard: .asciiCapable)
                
                Button(action: {
                    print("continueAccess")
                }, label: {
                    Text("Continuar")
                        .padding(.horizontal, 24)
                        .font(Font.custom("Montserrat-SemiBold", size: 16))
                        .kerning(1.2)
                })
                .buttonStyle(MainButtonStyle(isEnabled: continueAccess))
                .padding(.vertical, 12)
                
            }
        }
    }
}

#Preview {
    DoctorSignupFormView()
}
