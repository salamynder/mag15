abstract Ap0b = {
  cat 
    Art ; A ; CN ; CopV ; N1 ; NP ; AP ; S ; 

  fun 
    Det : Art -> N1 -> NP ;          -- the N1 | a N1 | this N1

    PredNP : NP -> CopV -> NP -> S ; -- NP1 is NP2
    PredAP : NP -> CopV -> AP -> S ; -- NP  is AP

    AttrAP : AP -> CN -> N1 ;        -- AP CN 
    AttrAPempty : CN -> N1 ;         -- CN 

    UseA   : A -> AP ;               -- A 

    Mistake, Error : CN ;            -- Lexicon:
    Big : A ;
    Is : CopV ;
    The, An, This : Art ;
}  

