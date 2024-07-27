//
//  PatientView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 26/07/24.
//

import SwiftUI

struct UserSignupFormView: View {
    @State var signupAccess: Bool = false
    var body: some View {
        VStack {
            TextFieldDataView(label: "Email", prompt: "ejemplo@email.com", keyboard: .emailAddress)
                .padding(.bottom, 12)
            
            TextFieldDataView(label: "Nombre completo", prompt: "Tu nombre aquí...", keyboard: .namePhonePad)
                .padding(.bottom, 12)
            
            TextFieldSecurityView(label: "Contraseña", prompt: "Escribe una contraseña", keyboard: .asciiCapable)
                .padding(.bottom, 12)
            
            TextFieldSecurityView(label: "Repite Contraseña", prompt: "Repite tu contraseña", keyboard: .asciiCapable)
                .padding(.bottom, 32)
            
            Button(action: {
                print("Registrar")
            }, label: {
                Text("Registrar")
                    .padding(.horizontal, 24)
                    .font(Font.custom("Montserrat-SemiBold", size: 16))
                    .kerning(1.2)
            })
            .buttonStyle(MainButtonStyle(isEnabled: signupAccess))
            .padding(.bottom, 12)
            
            
            
            
        }
    }
}

#Preview {
    UserSignupFormView()
}
