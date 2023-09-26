    concrete FoodBra of Food = {
  
      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;
  
      lin
        Is item quality = {s = item.s ++ "é" ++ quality.s} ;
        This kind = {s = "este" ++ kind.s} ;
        That kind = {s = "aquele" ++ kind.s} ;
        QKind quality kind = {s = kind.s ++ quality.s} ;
        Wine = {s = "vinho"} ;
        Cheese = {s = "queijo"} ;
        Fish = {s = "peixe"} ;
        Very quality = {s = "muito" ++ quality.s} ;
        Fresh = {s = "fresco"} ;
        Warm = {s = "quente"} ;
        Italian = {s = "italiano"} ;
        Expensive = {s = "caro"} ;
        Delicious = {s = "delicioso"} ;
        Boring = {s = "tedioso"} ;
    }

    -- comment generate_random -number=5 -lang=FoodEng | linearize -lang=FoodBra