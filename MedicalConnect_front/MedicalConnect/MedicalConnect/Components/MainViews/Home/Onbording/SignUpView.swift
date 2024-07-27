//
//  SignUpView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 26/07/24.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var selectedTypeOfUser: TypeOfUsers = .patient
    
    var body: some View {
        VStack{
            NavigationStack{
                
       
            UpperFrame(label: "Registrarme como")
            
            Picker("Type of user", selection: $selectedTypeOfUser) {
                ForEach(TypeOfUsers.allCases, id: \.self) {option in
                    Text(option.rawValue)
                        .font(Font.custom("Montserrat-Regular", size: 12))
                }
            }
            .pickerStyle(.segmented)
            .padding(16)
                
                
                UserSignupFormView()
            
            Spacer()
        }
            
        }
      
    }
}

#Preview {
    SignUpView()
}
