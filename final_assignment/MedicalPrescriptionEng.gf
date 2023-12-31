concrete MedicalPrescriptionEng of MedicalPrescription = open Prelude in {
  lincat 
    MedName, MedQuant, Dosage, NumberOfDays = SS ; 
    Medication = SS;
    Prescription = SS;
    Disease = SS;

  lin
    Prescribe med dose days = {s = "Prescribe " 
    ++ med.s ++ dose.s ++ " for " ++ days.s ++".";
    };
    
    Atestate days cid = {
      s = "Atestate  of leave for" ++ days.s ++ " for the current CID: " ++ cid.s 
        ++ "Patient Signature:_________";
    };
    Medicine quant name = {s = quant.s ++ " of " ++ name.s };

    Tylenol = ss "Tylenol";
    Amoxicilin = ss "Amoxicilin";
    VitaminD = ss "Vitamin D";
    Ibuprofen = ss "Ibuprofen";
    Levothyroxine = ss "Levoxyl";
    Alprazolam = ss "Xanax";
    
    OnePill = ss "one pill";
    TwoPills = ss "two pills";

    Q6H = ss "every 6 Hours";
    Q8H = ss "every 8 Hours";

    FiveDays = ss "5 Days";
    SevenDays = ss "7 Days";
    TwentyDays = ss "20 Days";
    
    CID041 = ss "CID041";
}