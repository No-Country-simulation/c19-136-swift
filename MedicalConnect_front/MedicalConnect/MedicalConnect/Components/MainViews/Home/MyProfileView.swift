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
       
        
//        NavigationStack{
            VStack {
                
                Text("Mi Perfil")
                    .font(Font.custom("Montserrat-Bold", size: 20))
                    .padding(16)
                    .foregroundStyle(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .background(.main)
                
                List(allMenus){ option in

                    NavigationLink(value: Route.login(.profile(.details(item: option)))) {
                        Text(option.title.rawValue)
                    }
                    .frame(height: 40)
                    
//                    NavigationLink(option.title.rawValue, value: option)
//                        .frame(height: 40)
                    
                }
               
                .navigationDestination(for: Route.self, destination: { $0 })
                .listStyle(InsetListStyle())
                
            }
//        }
    }
}

#Preview {
    MyProfileView()
}
