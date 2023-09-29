abstract MedicalPrescription = {
  flags
    startcat = Prescription ;
  cat
    Prescription ; MedName ; MedQuant ; Dosage ; NumberOfDays ; Medication ;
  fun
    Prescribe : Medication -> Dosage -> NumberOfDays -> Prescription ;
    Medicine : MedQuant -> MedName -> Medication;
    Tylenol, Amoxicilin: MedName;
    Pill: MedQuant;
    Q6H: Dosage;
    FiveDays: NumberOfDays;
}
{-
Rule 01(Medicação): Prescrevo (Medicamento) QtPills Every6Hours for FiveDays;
Rule 02(Atestado): Prescribe NumDays Atestate for Disease;
-}