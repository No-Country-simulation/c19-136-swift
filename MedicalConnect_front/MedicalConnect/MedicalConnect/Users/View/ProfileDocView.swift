//
//  ProfileDocView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 28/07/24.
//

import SwiftUI

struct ProfileDocView: View {
    
    let doctor: Doctor
    private let validations: DoctorDataValidations = DoctorDataValidations()
    @EnvironmentObject private var routeManager : NavigationRouter
    @State private var nextView: Bool = false

    @State var scheduleAccess: Bool = false

    
    let test = TestData()
    var body: some View {
       
            
            VStack {
                
                ScrollView {
                    
                    CardAboutDoctorView(
                        name: doctor.user.name,
                        evaluation: validations.getAverageOfEvaluations(doctor: doctor),
                        medicalSpeciality: doctor.medicalSpeciality.rawValue,
                        servicios: doctor.services,
                        workDays: doctor.workDays,
                        numberOfConsults: validations.getNumberOfConsults(doctor: doctor),
                        jobDescription: doctor.jobDescription
                    )
                    
                    
                    Button(action: {
                        
                        nextView = true
                        //routeManager.push(to: <#T##Route#>)
                        
                        print("Agendar consulta")
                    }, label: {
                        Text("Agendar consulta")
                            .padding(.horizontal, 24)
                            .font(Font.custom("Montserrat-SemiBold", size: 16))
                            .kerning(1.2)
                    })
                    .buttonStyle(MainButtonStyle(isEnabled: true))
                    .padding(.vertical, 12)
                    .navigationDestination(isPresented: $nextView) {
                        SchedulePayAppoinmentView(doctor: doctor, patient: test.patient1)
                    }
                    
                    VStack{
                        Text("Reseñas")
                            .padding(5)
                            .font(Font.custom("Montserrat-semiBold", size: 16))
                            .frame(maxWidth: .infinity)
                            .background(.backgroundRows200, in: RoundedRectangle(cornerRadius: 8))
                            .padding(.horizontal,12)
                        
                        ScrollView(.horizontal) {
                            HStack{
                                ForEach(validations.getReviews(doctor: doctor), id: \.id) { review in
                                    
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
            .environmentObject(routeManager)
    }
}

#Preview {
   
    let showData = DoctorDataValidations()
    let test = TestData()
    
    return ProfileDocView(doctor: test.doctor1)
        .environmentObject(NavigationRouter())
}
