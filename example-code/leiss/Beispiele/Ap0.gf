abstract Ap0 = {
  cat 
    Art ; A ; CN ; CopV ; N1 ; NP ; AP ; S ; 

  fun 
    This : CN -> NP ;                -- this CN
    Det : Art -> N1 -> NP ;          -- the AP CN | a AP CN

    PredNP : NP -> CopV -> NP -> S ; -- NP1 is NP2
    PredAP : NP -> CopV -> AP -> S ; -- NP  is AP

    AttrAP : AP -> CN -> N1 ;        -- AP CN 

    UseA   : A -> AP ;               -- A 

    Mistake, Error : CN ;            -- Lexicon:
    Big : A ;
    Is : CopV ;
    The, An : Art ;
}  

