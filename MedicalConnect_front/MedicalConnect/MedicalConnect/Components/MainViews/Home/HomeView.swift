//
//  HomeView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            NavigationStack {
                UpperFrame(label: "Encuentra el profesional que necesitas")
                
                SearchBarView(prompt: "Busca por especialidad", keyboard: .asciiCapable)
                    .padding(.bottom, 10)
                
                HeaderView(title: "Últimos médicos agregados")
                
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
