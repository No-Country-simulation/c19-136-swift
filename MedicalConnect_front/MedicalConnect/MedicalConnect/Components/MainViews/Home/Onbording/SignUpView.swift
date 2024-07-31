//
//  SignUpView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 26/07/24.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var userManager = UserManager()
    @State var showPatientForm: Bool = false
    @State var showDoctorForm: Bool = false
    @EnvironmentObject var navigationManager : NavigationRouter
    var body: some View {
        VStack{
//            NavigationStack{
                
       
            UpperFrame(label: "Registrarme como")
            
                Picker("Type of user", selection: $userManager.selectedTypeOfUser) {
                ForEach(TypeOfUsers.allCases, id: \.self) {option in
                    Text(option.rawValue)
                        .font(Font.custom("Montserrat-Regular", size: 12))
                }
            }
            .pickerStyle(.segmented)
            .padding(16)
                
                
                UserSignupFormView(
                    email: $userManager.user.email,
                    password: $userManager.user.password,
                    verifiedPassword: $userManager.verifiedPassword,
                    name: $userManager.user.name
                )
                
                Button(action: {
                    
                    if userManager.selectedTypeOfUser == .patient {
                        navigationManager.routes.append(.signupForm(.patient))
                        print("Patient")
                    } else {
                        navigationManager.routes.append(.signupForm(.doctor))
                        print("Doctor")
                    }
                    
                    
                    print("Registrar")
                    print("\(userManager.user.name)")
                }, label: {
                    Text("Registrar")
                        .padding(.horizontal, 24)
                        .font(Font.custom("Montserrat-SemiBold", size: 16))
                        .kerning(1.2)
                })
            
                .buttonStyle(MainButtonStyle(isEnabled: true /*userManager.signupAccess*/))
                .padding(.bottom, 12)
               
            
            Spacer()
//        }
            
        }
        .navigationDestination(for: Route.self) { $0 }
       
        
      
    }
    
}

#Preview {
    SignUpView()
        .environmentObject(NavigationRouter())
       
}
