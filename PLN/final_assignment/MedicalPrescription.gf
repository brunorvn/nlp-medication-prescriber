abstract MedicalPrescription = {
  flags
    startcat = Prescription ;
  cat
    Prescription ; MedName ; MedQuant ; Dosage ; NumberOfDays ; Medication ;
  fun
    Prescribe : Medication -> Dosage -> NumberOfDays -> Prescription ;
    Medicine  : MedQuant -> MedName -> Medication;

    Tylenol, Amoxicilin, VitaminD, Ibuprofen, Levothyroxine, Alprazolam: MedName;
    OnePill, TwoPills: MedQuant;
    Q6H, Q8H: Dosage;
    FiveDays, SevenDays, TwentyDays: NumberOfDays;
}
{-
Rule 01(Medicação): Prescrevo (Medicamento) QtPills Every6Hours for FiveDays;
Rule 02(Atestado): Prescribe NumDays Atestate for Disease;
-}