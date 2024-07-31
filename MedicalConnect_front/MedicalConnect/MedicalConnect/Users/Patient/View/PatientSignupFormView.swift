//
//  PatientSignupFormView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct PatientSignupFormView: View {
    
    @State var phone: String = ""
    @State var selectedGenderOption: Gender = .FEMALE
    
    @State var birthdate: Date = .now
    @State var existAllergies : Allergies = .yes
    @State var allergies: String = ""
    @State var continueAccess: Bool = false
    
    var body: some View {
        VStack{
           
//            NavigationStack {
                UpperFrame(label: "Te pediremos algunos datos importantes")
                
                
                ScrollView {
                    TextFieldDataView(label: "Número de teléfono móvil", prompt: "+549 111 111 111", keyboard: .phonePad, data: $phone)
                        .padding(.vertical, 12)
                    
                    
                    VStack(alignment: .leading, content: {
                        Text("Género")
                            .font(Font.custom("Montserrat-SemiBold", size: 14))
                        Picker("Select your gender", selection: $selectedGenderOption) {
                            ForEach(Gender.allCases, id: \.self) { option in
                                Text(option.rawValue)
                                    
                            }
                        }
                        
                        .pickerStyle(SegmentedPickerStyle())
                    })
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 24, trailing: 20))
                    
                    
                    
                    HStack {
                        DatePicker("Fecha de Nacimiento", selection: $birthdate, displayedComponents: .date)
                            .font(Font.custom("Montserrat-SemiBold", size: 14))
                            .datePickerStyle(.compact)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 24, trailing: 20))
                    
                    
                    
                    VStack(alignment: .leading, content: {
                        Text("¿Padeces alguna alergia?")
                            .font(Font.custom("Montserrat-SemiBold", size: 14))
                        Picker("Select your gender", selection: $existAllergies) {
                            ForEach(Allergies.allCases, id: \.self) { option in
                                Text(option.rawValue)
                                    
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    })
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 24, trailing: 20))
                    
                    if existAllergies == .yes {
            
                        
                        BigFrameTextFieldView(label: "Escribe tus alergias en el siguiente recuadro", prompt: "Tengo alergia a...", keyboard: .asciiCapable, data:  allergies)
                    }
                    
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
                

                
                Spacer()
//            }
        }
    }
}

#Preview {
    PatientSignupFormView()
}
