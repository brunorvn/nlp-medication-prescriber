      concrete FoodsBra2 of Foods = open Prelude in {
  
    lincat
      Phrase = SS ;
      Kind, Quality = {s : Number => Str} ;
      Item = {s : Str ; n : Number} ;
  
    lin
      Is item quality = ss (item.s ++ copula item.n ++ (quality.s ! item.n)) ;
      This  = det Sg "este" ;
      That  = det Sg "aquele" ;
      These = det Pl "estes" ;
      Those = det Pl "aqueles" ;
      QKind quality kind = {s = table {n => (kind.s ! n) ++ (quality.s ! n)}} ;
      Wine = regNoun "vinho" ;
      Cheese = regNoun "queijo" ;
      Fish = regNoun "peixe" ;
      Pizza = regNoun "pizza" ;
      Very = adjective "muito" ; -- fazer uma tabela com singular e plural 
      Fresh = noun "fresco" "frescos" ;
      Warm = noun "quente" "quentes" ;
      Italian = noun "italiano" "italianos" ;
      Expensive = noun "caro" "caros";
      Delicious = noun "delicioso" "deliciosos" ;
      Boring = noun "chato" "chatos" ;
    
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
      regAdj : Str -> {s : Number => Str} =
        \caro -> adjective caro (caro + "s") ;
      
    }
    -- import FoodsBra.gf
    -- gr -number=10 | linearize
