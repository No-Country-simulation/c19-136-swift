//
//  DoctorRowView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct DoctorRowView: View {
    let exampleTest = TestData()
    
    let name:  String
    let medicalSpeciality: String
    let evaluation: Float
    let servicios: [String]
    var body: some View {

            
            HStack{
                VStack(alignment: .leading){
                    Text(name)
                        .font(Font.custom("Montserrat-SemiBold", size: 18, relativeTo: .title))
                    
                    Group {
                        Text(medicalSpeciality)
                            .font(Font.custom("Montserrat-Regular", size: 14, relativeTo: .subheadline))
                        
                        DoctorServicesCardView(services: servicios)
                            .font(Font.custom("Montserrat-Regular", size: 12, relativeTo: .subheadline))
                            

                    }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        
        
                }
                .padding(.horizontal, 12)
                
                VStack(alignment: .center){
                    
                    
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 120)
                        
                        
                    Label("\(evaluation, format: .number.precision(.fractionLength(1)))/5.0", systemImage: "star.fill")
                        .font(Font.custom("Montserrat-SemiBold", size: 14,relativeTo: .subheadline))
                        .environment(\.layoutDirection, .rightToLeft)
                        
                }
                .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 12))
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(Color(.babyBlue300), in: RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))

            .padding(.horizontal, 12)
        
    }
    

}

#Preview {
    DoctorRowView(name: "Josefina Díaz",medicalSpeciality: MedicalSpeality.pediatrics.rawValue, evaluation: 4.78, servicios: ["Cardiología pediátrica", "Endocrinología pediátrica"] )
}
