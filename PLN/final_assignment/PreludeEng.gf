abstract PreludeEng = {
  flags startcat = SS ;
  cat
    SS ;
  fun
    ss : Str -> SS ;
    cc : SS -> SS -> SS ;
    prefixSS : Str -> SS -> SS ;
}

concrete PreludeEngEng of PreludeEng = {
  lincat
    SS = {s : Str} ;
  lin
    ss x = {s = x} ;
    cc x y = {s = x.s ++ y.s} ;
    prefixSS p x = {s = p ++ x.s} ;
}
