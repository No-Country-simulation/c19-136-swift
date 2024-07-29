//
//  Test_names.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 28/07/24.
//

import Foundation
import SwiftUI

struct TestData {
    let patient1: Patient
    let patient2: Patient
    let patient3: Patient
    
    let doctor1: Doctor
    let doctor2: Doctor
    let doctor3: Doctor
    
    var doctors: [Doctor] = []
        
        
    
    
    init() {
        self.patient1 = Patient(
            name: "Giuliana Giraud",
            email: "giuliana.giraud@example.com",
            password: "123456ABc!",
            phone: "075 871 61 23",
            photo: nil,
            birthdate: Date(),
            allergies: "Penicilina",
            gender: .FEMALE
        )
        
        self.patient2 = Patient(
            name: "Kyle Simmons",
            email: "kyle.simmons@example.com",
            password: "123456ABc!",
            phone: "055-831-663",
            photo: nil,
            birthdate: Date(),
            allergies: "Triaxona",
            gender: .MALE
        )
        
        self.patient3 = Patient(
            name: "María Méndez",
            email: "maria.mendez@example.com",
            password: "123456ABc!",
            phone: "967-825-265",
            photo: nil,
            birthdate: Date(),
            allergies: "Penicilina",
            gender: .FEMALE
        )
        
        self.doctor1 = Doctor(
            name: "Josefina Díaz",
            email: "josefina_diaz112@example.com",
            password: "123423234",
            phone: "523221984503",
            medicalSpeciality: .cardiology,
            professionalLicense: "8877621A",
        jobDescription: "Hace más de 10 años que practico medicina pediátrica y me apasiona trabajar con niños, poder contribuir a su salud se ha convertido en la pasión de mi vida. Me he especializado en pediatría y luego elegí la cardiología para poder cuidar y curar los corazones del mañana. ¡Gracias por elegirme!",
            workDays: ["Lun", "Mar", "Mier"],
            services: ["Cardiología pediátrica", "Nefrología pediátrica"],
            evaluationData: DoctorEvaluationData(
                averageOfEvaluations: 5.0,
                numberOfConsults: 33,
                reviews: [
                    Review(
                        name: patient1.name,
                        evaluation: 5.0,
                        reviewDescription: "La doc fue increíble con mi pequeño, fuimos muy preocupados y ella nos dio la tranquilidad que necesitábamos"),
                    
                    Review(
                        name: patient2.name,
                        evaluation: 5.0,
                        reviewDescription: "La doc fue increíble con mi pequeño, fuimos muy preocupados y ella nos dio la tranquilidad que necesitábamos"),
                    
                    Review(
                        name: patient3.name,
                        evaluation: 5.0,
                        reviewDescription: "La doc fue increíble con mi pequeño, fuimos muy preocupados y ella nos dio la tranquilidad que necesitábamos")
                
                ]
            )
        )
        
       
        self.doctor2 = Doctor(
            name: "Lidija Tošić",
            email: "lidija.tosic@example.com",
            password: "123423234",
            phone: "068-2850-203",
            medicalSpeciality: .endocrinology,
            professionalLicense: "1127621C",
            jobDescription: "Con más de 20 años de experiencia en la medicina, he dedicado mi carrera a estudiar y tratar los trastornos del sistema endocrino. Me he especializado en el manejo de diabetes, trastornos tiroideos y otras enfermedades hormonales, con el objetivo de mejorar la calidad de vida de mis pacientes. A través de un enfoque integral y personalizado, me esfuerzo por proporcionar el mejor cuidado posible. ¡Gracias por confiar en mí para tu salud endocrina!",
            workDays: ["Lun", "Mier", "Sab"],
            services: ["Neuroendocrinología", "Endocrinología pediátrica"],
            evaluationData: DoctorEvaluationData(
                averageOfEvaluations: 5.0,
                numberOfConsults: 33,
                reviews: [
                    Review(
                        name: patient1.name,
                        evaluation: 5.0,
                        reviewDescription: "El Dr. Martínez ha sido un verdadero salvavidas para mí. Después de años de lucha con problemas de tiroides, finalmente encontré a un especialista que no solo es extremadamente conocedor, sino también empático y paciente. Durante cada consulta, se toma el tiempo para explicar cada detalle de mi tratamiento y responder todas mis preguntas. "),
                    
                    Review(
                        name: patient2.name,
                        evaluation: 5.0,
                        reviewDescription: "Estoy muy agradecido por el cuidado y la atención que he recibido. ¡Recomendaría al Dr. Martínez a cualquiera que busque un endocrinólogo dedicado y profesional!"),
                    
                    Review(
                        name: patient3.name,
                        evaluation: 5.0,
                        reviewDescription: "Su enfoque integral y personalizado ha hecho una gran diferencia en mi salud. Además, su equipo siempre es amable y eficiente")
                
                ]
            )
        )
        
        self.doctor3 = Doctor(
            name: "Josefina Díaz",
            email: "josefina_diaz112@example.com",
            password: "123423234",
            phone: "523221984503",
            medicalSpeciality: .cardiology,
            professionalLicense: "8877621A",
        jobDescription: "Hace más de 10 años que practico medicina pediátrica y me apasiona trabajar con niños, poder contribuir a su salud se ha convertido en la pasión de mi vida. Me he especializado en pediatría y luego elegí la cardiología para poder cuidar y curar los corazones del mañana. ¡Gracias por elegirme!",
            workDays: ["Lun", "Mar", "Mier"],
            services: ["Cardiología pediátrica", "Nefrología pediátrica"],
            evaluationData: DoctorEvaluationData(
                averageOfEvaluations: 5.0,
                numberOfConsults: 33,
                reviews: [
                    Review(
                        name: patient1.name,
                        evaluation: 5.0,
                        reviewDescription: "La doc fue increíble con mi pequeño, fuimos muy preocupados y ella nos dio la tranquilidad que necesitábamos"),
                    
                    Review(
                        name: patient2.name,
                        evaluation: 5.0,
                        reviewDescription: "La doc fue increíble con mi pequeño, fuimos muy preocupados y ella nos dio la tranquilidad que necesitábamos"),
                    
                    Review(
                        name: patient3.name,
                        evaluation: 5.0,
                        reviewDescription: "La doc fue increíble con mi pequeño, fuimos muy preocupados y ella nos dio la tranquilidad que necesitábamos")
                
                ]
            )
        )
        
        
        self.doctors = [doctor1, doctor2, doctor3]
    }
    
    
    
}
