//
//  DoctorServicesCardView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct DoctorServicesCardView: View {
    let services: [String]
    var body: some View {
        
        VStack{
            ForEach(services, id: \.self) { service in
                Text(service)
                    .padding(8)
                   
                    .background(.white, in: RoundedRectangle(cornerRadius: 12.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                    
            }
        } 
        
        
    }
}

#Preview {
    DoctorServicesCardView(services: ["Cardiología pediátrica", "Nefrología pediátrica"])
}
