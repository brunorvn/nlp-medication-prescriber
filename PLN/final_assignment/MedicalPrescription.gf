abstract MedicalPrescription = {
  flags
    startcat = Prescription ;
  cat
    Prescription ; Medicine ; Dosage ; Instructions ; Duration ; PatientInfo ; DoctorInfo ; PrescriptionDate ; PharmacyInfo ;

  fun
    prescribe : Medicine -> Dosage -> Instructions -> Duration -> PatientInfo -> DoctorInfo -> Prescription ;
    withPrescriptionDate : Prescription -> PrescriptionDate -> Prescription ;
    withPharmacyInfo : Prescription -> PharmacyInfo -> Prescription ;


}
