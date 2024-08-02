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
        
            
   
         
                         List(configServices) { service in
                             NavigationLink(service.title.rawValue, value: service)
                                 .frame(height:40)
                           
                             }
                         
                        
                             .navigationDestination(for: Service.self, destination: { service in
                                 Text(service.title.rawValue)
                             })
                             
                             .listStyle(InsetListStyle())
                             .navigationTitle("Configuración")
        
         

    }
}

#Preview {
    ConfigView()
}
