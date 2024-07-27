//
//  ConfigView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct ConfigView: View {
    let configServices: [Services] = [
        
        .init(title: .notifications ),
        .init(title: .payment),
        .init(title: .auth),
        .init(title: .termsAndconditions),
        .init(title:  .privacy),
        .init(title:  .contact)


    ]
    
    var body: some View {
        NavigationStack {
            
       
            List(configServices) { service in
                NavigationLink(service.title.rawValue, value: service)
                    .frame(height:40)
                }
            
                .navigationTitle("Configuración")
                .navigationDestination(for: Services.self, destination: { service in
                    Text(service.title.rawValue)
                })
                
                .listStyle(InsetListStyle())
            

        }

    }
}

#Preview {
    ConfigView()
}
