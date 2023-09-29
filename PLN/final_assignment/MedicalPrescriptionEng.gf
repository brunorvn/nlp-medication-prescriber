concrete MedicalPrescriptionEng of MedicalPrescription = open Prelude in {
  lincat 
    MedName, MedQuant, Dosage, NumberOfDays = SS ; 
  lin
    Prescribe med days = {s = "Prescribe " ++ med.s ++ " for " ++ days.s ++ ".";};
    
    Medication quant name = {s = quant.s ++ " of " ++ name.s };

    Tylenol = ss "tylenol";
    Amoxicilin = ss "amoxicilin";
    Pill = ss "one pill";
    Q6H = ss "every 6 Hours";
    FiveDays = ss "5 Days";
}