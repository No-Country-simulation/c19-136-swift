package com.c19_136_swift.MedicalConnect.domain.medicalConsult;

import com.c19_136_swift.MedicalConnect.domain.doctor.Doctor;
import com.c19_136_swift.MedicalConnect.domain.medicalConsult.payment.Payment;
import com.c19_136_swift.MedicalConnect.domain.patient.Patient;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;



@Entity(name = "MedicalConsult")
@Table(name = "medical_consults")
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class MedicalConsult {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JoinColumn(name = "doctor_id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Doctor doctor;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "patient_id")
    private Patient patient;

    private LocalDateTime consultDate;

    private String typeOfConsult;
    private String symptoms;
    private String diagnosis;
    private String treatment;
    private String reasonCancellation;


    @JoinColumn(name = "payment_id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Payment payment;

}
