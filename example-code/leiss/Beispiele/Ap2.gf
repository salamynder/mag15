abstract Ap2 = {
  cat 
    Art ; A ; CN ; CopV ; N1 ; NP ; AP ; S ; 

  fun 
    Det : Art -> N1 -> NP ;               -- the N1 | a N1 | this N1

    PredNP : NP -> CopV -> NP -> S ;      -- NP1 is/are NP2
    PredAPpos : NP -> CopV -> AP -> S ;   -- NP  is/are AP.pos
    PredAPcmp : NP -> CopV -> AP -> S ;   -- NP  is/are AP.cmp
    PredAPsup : NP -> CopV -> AP -> S ;   -- NP  is/are AP.sup

    AttrAPemptySg : CN -> N1 ;            -- CN.sg
    AttrAPemptyPl : CN -> N1 ;            -- CN.pl

    AttrAPposSg : AP -> CN -> N1 ;        -- AP.pos CN.sg
    AttrAPcmpSg : AP -> CN -> N1 ;        -- AP.cmp CN.sg
    AttrAPsupSg : AP -> CN -> N1 ;        -- AP.sup CN.sg

    AttrAPposPl : AP -> CN -> N1 ;        -- AP.pos CN.pl
    AttrAPcmpPl : AP -> CN -> N1 ;        -- AP.cmp CN.pl
    AttrAPsupPl : AP -> CN -> N1 ;        -- AP.sup CN.pl

    UseA   : A -> AP ;                    -- A 
    CompA  : A -> NP -> AP ;              -- as A.pos as NP | A.cmp than NP 
                                          -- | A.sup of all NP.pl
    Mistake, Error : CN ;                 -- Lexicon:
    Big : A ;
    Is : CopV ;
    The, An, This : Art ;                 -- Def, Indef, Dem ?
}  

