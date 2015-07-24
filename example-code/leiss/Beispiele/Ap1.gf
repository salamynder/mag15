abstract Ap1 = {
  cat 
    Art ; A ; CN ; CopV ; N1 ; NP ; AP ; S ; 

  fun 
    This : CN -> NP ;                   -- this CN
    Det : Art -> N1 -> NP ;             -- the AP CN | a AP CN

    PredNP : NP -> CopV -> NP -> S ;    -- NP1 is NP2
    PredAPpos : NP -> CopV -> AP -> S ; -- NP  is AP.pos
    PredAPcmp : NP -> CopV -> AP -> S ; -- NP  is AP.cmp
    PredAPsup : NP -> CopV -> AP -> S ; -- NP  is AP.sup

    AttrAPpos : AP -> CN -> N1 ;        -- AP.pos CN 
    AttrAPcmp : AP -> CN -> N1 ;        -- AP.cmp CN 
    AttrAPsup : AP -> CN -> N1 ;        -- AP.sup CN 

    UseA   : A -> AP ;                  -- A 
    CompA  : A -> NP -> AP ;            -- as A.pos as NP | A.cmp than NP 
                                        -- | A.sup of all NP.pl

    Mistake, Error : CN ;               -- Lexicon:
    Big : A ;
    Is : CopV ;
    The, An : Art ;
}  

