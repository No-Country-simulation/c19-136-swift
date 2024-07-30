//
//  MyProfileView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct MyProfileView: View {
    
    let allMenus : [MyMenu] = [
        .init(title: .myData),
        .init(title: .myAppointments),
        .init(title: .myStudies),
        .init(title: .treatments)
    
    ]
    
    var body: some View {
       
        
        NavigationStack{
            VStack {
                
                //            PatientDataFrameView(
                //                name: <#T##String#>,
                //                age: <#T##Int#>,
                //                hasAllergies: <#T##String#>,
                //                gender: <#T##Gender#>,
                //                appointmentsMade: <#T##Int#>
                //            )
                
                List(allMenus){ option in
                    NavigationLink(option.title.rawValue, value: option)
                        .frame(height: 40)
                    
                }
                .navigationTitle("Mi Perfil")
                .navigationDestination(for: MyMenu.self, destination: { option in
                    Text(option.title.rawValue)
                })
                .listStyle(InsetListStyle())
            }
        }
    }
}

#Preview {
    MyProfileView()
}
