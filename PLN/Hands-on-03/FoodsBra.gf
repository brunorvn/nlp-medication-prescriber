      concrete FoodsBra of Foods = open Prelude in {
  
    lincat
      Phrase, Quality = SS ;
      Kind = {s : Number => Str} ;
      Item = {s : Str ; n : Number} ;
  
    lin
      Is item quality = ss (item.s ++ copula item.n ++ quality.s) ;
      This  = det Sg "este" ;
      That  = det Sg "aquele" ;
      These = det Pl "estes" ;
      Those = det Pl "aqueles" ;
      QKind quality kind = {s = table {n => kind.s ! n ++ quality.s }} ;
      Wine = regNoun "vinho" ;
      Cheese = regNoun "queijo" ;
      Fish = regNoun "peixe" ;
      Pizza = regNoun "pizza" ;
      Very = prefixSS "muito" ;
      Fresh = ss "fresco" ;
      Warm = ss "quente" ;
      Italian = ss "italiano" ;
      Expensive = ss "caro" ;
      Delicious = ss "delicioso" ;
      Boring = ss "chato" ;
    
    param
      Number = Sg | Pl ;
  
    oper
      det : Number -> Str -> {s : Number => Str} -> {s : Str ; n : Number} =
        \n,d,cn -> {
          s = d ++ cn.s ! n ;
          n = n
        } ;
      noun : Str -> Str -> {s : Number => Str} =
        \man,men -> {s = table {
          Sg => man ;
          Pl => men
          }
        } ;
      regNoun : Str -> {s : Number => Str} =
        \car -> noun car (car + "s") ;
      copula : Number -> Str =
        \n -> case n of {
          Sg => "é" ;
          Pl => "são"
          } ;
    }
    -- import FoodsBra.gf
    -- gr -number=10 | linearize
