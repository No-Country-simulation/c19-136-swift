//
//  ConfigView.swift
//  MedicalConnect
//
// Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct ConfigView: View {
    let configServices: [Service] = [
        
        .init(title: .notifications ),
        .init(title: .payment),
        .init(title: .auth),
        .init(title: .termsAndconditions),
        .init(title:  .privacy),
        .init(title:  .contact),
            .init(title: .logout)
        
        
    ]
    
    var body: some View {

        
        VStack {
            
            Text("Configuración")
                .font(Font.custom("Montserrat-Bold", size: 20))
                .padding(16)
                .foregroundStyle(.white)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .background(.main)
            
            List(configServices) { service in
                
                
                
                
                NavigationLink(value: Route.login(.configure(.details(item: service)))) {
                    Text(service.title.rawValue)
                }
               
                .frame(height:40)

        }
      
        .navigationDestination(for: Route.self, destination: { $0 })
        .listStyle(InsetListStyle())
        }


            

    }
}

#Preview {
    ConfigView()
}
