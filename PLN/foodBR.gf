    concrete FoodBR of Food = {
  
      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;
  
      lin
        Is item quality = {s = item.s ++ "é" ++ quality.s} ;
        This kind = {s = "isso" ++ kind.s} ;
        That kind = {s = "aquilo" ++ kind.s} ;
        QKind quality kind = {s = quality.s ++ kind.s} ;
        Wine = {s = "vinho"} ;
        Cheese = {s = "queijo"} ;
        Fish = {s = "peixe"} ;
        Very quality = {s = "muito" ++ quality.s} ;
        Fresh = {s = "fresco"} ;
        Warm = {s = "quente"} ;
        Italian = {s = "Italiano"} ;
        Expensive = {s = "caro"} ;
        Delicious = {s = "delicioso"} ;
        Boring = {s = "entendiante"} ;
    }
