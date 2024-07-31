//
//  ProfileDocView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 28/07/24.
//

import SwiftUI

struct ProfileDocView: View {

    @State var scheduleAccess: Bool = false
    let name: String
    let evaluation: Float
    let medicalSpeciality: String
    let services: [String]
    let workDays: [WorkDays]
    let numberOfConsults: Int
    let jobDescription: String
    let reviews: [Review]
    
    let validations = DoctorDataValidations()
    
    var body: some View {
       
            
            VStack {
                
                ScrollView {
                    
                    CardAboutDoctorView(
                        name: name,
                        evaluation: evaluation,
                        medicalSpeciality: medicalSpeciality,
                        servicios: services,
                        workDays: workDays,
                        numberOfConsults: numberOfConsults,
                        jobDescription: jobDescription
                    )
                    
                    
                    Button(action: {
                        print("Agendar consulta")
                    }, label: {
                        Text("Agendar consulta")
                            .padding(.horizontal, 24)
                            .font(Font.custom("Montserrat-SemiBold", size: 16))
                            .kerning(1.2)
                    })
                    .buttonStyle(MainButtonStyle(isEnabled: true))
                    .padding(.vertical, 12)
                    
                    
                    VStack{
                        Text("Reseñas")
                            .padding(5)
                            .font(Font.custom("Montserrat-semiBold", size: 16))
                            .frame(maxWidth: .infinity)
                            .background(.backgroundRows200, in: RoundedRectangle(cornerRadius: 8))
                            .padding(.horizontal,12)
                        
                        ScrollView(.horizontal) {
                            HStack{
                                ForEach(reviews, id: \.id) { review in
                                    
                                    DoctorReviewCardView(
                                        name: review.name,
                                        evaluation: review.evaluation,
                                        review: validations.getReviewDescription(review: review.reviewDescription)
                                    )
                                    
                                    
                                }
                            }
                        }
                        .padding(.horizontal, 12)
                        
                    }
                }
                

                Spacer()
                

            }
    }
}

#Preview {
   
    let showData = DoctorDataValidations()
    let test = TestData()
    
    return ProfileDocView(
        name: test.doctor1.user.name,
        evaluation: showData.getAverageOfEvaluations(doctor: test.doctor1),
        medicalSpeciality: test.doctor1.medicalSpeciality.rawValue,
        services: test.doctor1.services,
        workDays: test.doctor1.workDays,
        numberOfConsults: showData.getNumberOfConsults(doctor: test.doctor1),
        jobDescription: test.doctor1.jobDescription,
        reviews: showData.getReviews(doctor: test.doctor1) as! [Review]
    )
}
