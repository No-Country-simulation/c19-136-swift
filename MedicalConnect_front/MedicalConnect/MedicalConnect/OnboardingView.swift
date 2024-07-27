//
//  OnboardingView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 26/07/24.
//

import SwiftUI

struct OnboardingView: View {
    @State var loginAccess: Bool = false
    var body: some View {
        
        NavigationStack {

                VStack{
                    Image("LOGO")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                    
                    Group {
                        TextFieldDataView(label: "Email", prompt: "ejemplo@email.com", keyboard: .emailAddress)
                            .padding(.bottom, 32)
                        
                        TextFieldSecurityView(label: "Contraseña",prompt: "Tu contraseña aquí...", keyboard: .asciiCapable)
                            .padding(.bottom, 32)
                    }
                    
                    Group {
                        Button(action: {
                            
                        }, label: {
                            Text("Ingresar")
                                .padding(.horizontal, 24)
                                .font(Font.custom("Montserrat-SemiBold", size: 16))
                                .kerning(1.2)
                        })
                        .buttonStyle(MainButtonStyle(isEnabled: loginAccess))
                        .padding(.bottom, 12)
                        
                        Button {
                            print("Registrarse")
                        } label: {
                        
                            VStack{
                                Text("¿No estás registrado?")
                                    .font(Font.custom("Montserrat-Regular", size: 12))
                                Text("Crea tu cuenta aquí")
                                    .font(Font.custom("Montserrat-SemiBold", size: 14))
                            }
                        }
                        .tint(.black)
                        .padding(.bottom, 8)
                        
                        Text("ó")
                            .font(Font.custom("Montserrat-Regular", size: 12))
                            .padding(.bottom, 8)
                        
                        
                        Button {
                            print("Registrarse con Apple")
                        } label: {
                            Label("Iniciar sesión con Apple", systemImage: "apple.logo")
                                .font(Font.custom("Montserrat-SemiBold", size: 16))
                        }
                        .buttonStyle(SignInWithAppleButtonStyle(isEnabled: true))

                    }
                    
                   

                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(content: {
                    LinearGradient(gradient: Gradient(colors:[Color("babyBlue-100"), Color("babyBlue-200")]), startPoint: .top, endPoint: .bottom)
                })
                .ignoresSafeArea()
            
        }
       
    }
}

#Preview {
     OnboardingView()
}
