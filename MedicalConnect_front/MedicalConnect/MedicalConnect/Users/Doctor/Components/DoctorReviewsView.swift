//
//  DoctorReviewsView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 28/07/24.
//

import SwiftUI

struct DoctorReviewsView: View {
    
    let name: String
    let evaluation: Float
    let review: String
    
    
    var body: some View {
        VStack{
            Text("Reseñas")
                .padding(5)
                .font(Font.custom("Montserrat-semiBold", size: 14))
                .frame(maxWidth: .infinity)
                .background(.mint, in: RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal,12)
                
            
            ScrollView(.horizontal) {
                
                VStack(alignment: .leading, spacing: 8){
                    
                    HStack{
                        Text("Hola")
                            .font(Font.custom("Montserrat-semiBold", size: 18))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("\(evaluation, format: .number.precision(.fractionLength(1)))")
                            .font(Font.custom("Montserrat-semiBold", size: 18))
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    
                  
                    
                    Text(review)
                        .font(Font.custom("Montserrat-Regular", size: 14))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                       
                }
                .padding(12)
                .background(.mint)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(width: 350)
               
                
                
                
            }
            .padding(.horizontal, 10)

        }
    }
}

#Preview {
    DoctorReviewsView(name: "Sandra", evaluation: 5.0, review: "La doc fue increíble con mi pequeño, fuimos muy preocupados y ella nos dio la tranquilidad que necesitábamos.")
}
