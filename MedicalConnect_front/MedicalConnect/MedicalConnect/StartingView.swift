//
//  ContentView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 25/07/24.
//

import SwiftUI

struct StartingView: View {
    @State private var nextViewButton: Bool = false
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 150) {
                
                VStack{
                    Image("LOGO")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                       
                }
                

                
             
            

                Button(action: {
                    nextViewButton = true
                }, label: {
                    Text("Comenzar")
                        .padding(.horizontal, 24)
                        .font(Font.custom("Montserrat-SemiBold", size: 16))
                        .kerning(1.2)
                })
                .buttonStyle(MainButtonStyle(isEnabled: true))
               
            }
            
            .navigationDestination(isPresented: $nextViewButton, destination: {
                OnboardingView()
                    .navigationBarBackButtonHidden()
            })
           
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(content: {
                LinearGradient(gradient: Gradient(colors:[Color("babyBlue-100"), Color("babyBlue-200")]), startPoint: .top, endPoint: .bottom)
            })
            .ignoresSafeArea()
                
        }
    }
}

#Preview {
    StartingView()
}
