concrete MedicalPrescriptionEng of MedicalPrescription = open StringOper in {
  lincat
    Medicine = {s : Str};
    Dosage = {s : Number => Str};
    Duration = {s : Str};
    PatientInfo = {s : Str};
    DoctorInfo = {s : Str};
    PrescriptionDate = {s : Str};
    PharmacyInfo = {s : Str};
    Instructions = {s : Str};

  lin
    prescribe med dosage duration patient doctor = {
      s = "Prescribe " ++ med.s ++ " " ++ dosage.s ++ " for " ++ duration.s ++ " for " ++ patient.s ++ " by Dr. " ++ doctor.s ++ ".";
    };

    Pill = {
      s = Table{
        Sg => "Pill";
        Pl => "Pills";
      }
    };

  oper
    Tylenol = {s = "Tylenol"};
    Amoxicilin = {s = "Amoxicilin"};
    OnePill = {s : Str ; n : Number};
    Every8Hours = {s = "Every 8 hours"};
    Every6Hours = {s = "Every 6 hours"};
    DrBrvn = {s = "Dr. Brvn"};
    FiveDays = {s = "5 days"};   
    SevenDays = {s = "7 days"};  
    JohnDoe = {s = "John Doe"};  

    Dosage_Pl : Str -> {s : Number => Str} = \pill -> {
      s = table {
        Sg => pill ;
        Pl => pill + "s"
        }
      } ;
    OnePill = Pill {s = "1 pill" ; n = Sg};
    TwoPills = Pill {s = "2 pills" ; n = Pl};

  param
    Number = Sg | Pl ;
}


{-
> i -retain MedicalPrescriptionEng.gf
> generate_random (prescribe Tylenol OnePill Every8Hours FiveDays JohnDoe DrBrvn)

-}