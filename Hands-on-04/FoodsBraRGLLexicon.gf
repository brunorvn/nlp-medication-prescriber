concrete FoodsBraRGLLexicon of FoodsRGLLexicon =
CatPor **
open
    ParadigmsPor
in {
    lin Wine = mkN "vinho" "vinhos" ;
    lin Cheese = mkN "queijo" "queijos" ;
    lin Fish = mkN "peixe" "peixes" ;
    lin Pizza = mkN "pizza" "pizzas" ;

    lin Fresh = mkA "fresco" "frescos" ;
    lin Warm = mkA "quente" "quente" ;
    lin Italian = compoundA (mkA "italiano" "italianos") ;
    lin Expensive = compoundA (mkA "caro" "caros") ;
    lin Delicious = compoundA (mkA "delicioso" "deliciosos") ;
    lin Boring = compoundA (mkA "chato" "chatos") ;
}
