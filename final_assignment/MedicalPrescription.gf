abstract MedicalPrescription = {
  flags
    startcat = Prescription;
  cat
    Prescription ; MedName ; MedQuant ; Dosage ; NumberOfDays ; Medication ; Disease ;
  fun
    -- rule 01
    Prescribe : Medication -> Dosage -> NumberOfDays -> Prescription ;
    Medicine  : MedQuant -> MedName -> Medication;
    -- rule 02
    Atestate  : NumberOfDays -> Disease -> Prescription;

    Tylenol, Amoxicilin, VitaminD, Ibuprofen, Levothyroxine, Alprazolam: MedName;
    OnePill, TwoPills: MedQuant;
    Q6H, Q8H: Dosage;
    FiveDays, SevenDays, TwentyDays: NumberOfDays;

    CID041: Disease; 
}
{-

Rule 01(Medicação): Prescrevo (Medicamento) QtPills Every6Hours for FiveDays;

Rule 02(Atestado): Atesto a saída por NumDays for Disease. Patient Signature: _____;
-}