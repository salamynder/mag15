concrete Ap2Ger of Ap2 = open DeclGer in {
param
  Cont = simpl | split ;  -- Comp, Number, Case, UseA in DeclGer
lincat 
  S = {s : Str} ; 
  CopV = {s : Number => Str} ;
  CN = {s : Number => Case => Str ; g : Gender} ;
  N1 = {s : Adekl => Case => Str ; g : Gender ; n : Number} ;
  NP = {s : Case => Str ; g : Gender ; n : Number} ;
  Art = {s : Gender => Number => Case => Str ; d : Adekl } ; 
  A  = {s : Comp => UseAP => Str} ;
  AP = {s : Comp => {s1 : UseAP => Str ; s2 : Case => Str} ; c : Cont} ;
lin 
  Det art n1 = 
    {s = table Case {c => art.s!(n1.g)!(n1.n)!c ++ (n1.s!(art.d))!c } ; 
     g = n1.g ; n = n1.n} ;

  PredNP np1 cop np2 = {s = np1.s!nom ++ cop.s!(np1.n) ++ np2.s!nom} ;

  PredAPpos np cop ap = 
    {s = np.s!nom ++ cop.s!(np.n) ++ (ap.s!pos).s1!pred ++ (ap.s!pos).s2!nom} ;
  PredAPcmp np cop ap = 
    {s = np.s!nom ++ cop.s!(np.n) ++ (ap.s!cmp).s1!pred ++ (ap.s!cmp).s2!nom} ;
  PredAPsup np cop ap = 
    {s = np.s!nom ++ cop.s!(np.n) ++ "am" ++ (ap.s!sup).s1!pred 
                                                 ++ (ap.s!sup).s2!nom} ;

  AttrAPposSg ap cn = 
    {s = table{ad => table{c => (ap.s!pos).s1!(attr (sgA ad cn.g c)) 
                                    ++ (cn.s!sg)!c ++ (ap.s!pos).s2!c}} ; 
     g = cn.g ; n = sg} ;
  AttrAPcmpSg ap cn = 
    {s = table{ad => table{c => (ap.s!cmp).s1!(attr (sgA ad cn.g c)) 
                                    ++ (cn.s!sg)!c ++ (ap.s!cmp).s2!c}} ; 
     g = cn.g ; n = sg} ;
  AttrAPsupSg ap cn = 
    {s = table{ad => table{c => (ap.s!sup).s1!(attr (sgA ad cn.g c)) 
                                    ++ (cn.s!sg)!c ++ (ap.s!sup).s2!c}} ; 
     g = cn.g ; n = sg} ;

  AttrAPposPl ap cn = 
    {s = table{ad => table{c => (ap.s!pos).s1!(attr (plA ad c))
                                    ++ (cn.s!pl)!c ++ (ap.s!pos).s2!c}} ;
     g = cn.g ; n = pl} ;
  AttrAPcmpPl ap cn = 
    {s = table{ad => table{c => (ap.s!cmp).s1!(attr (plA ad c))
                                    ++ (cn.s!pl)!c ++ (ap.s!cmp).s2!c}} ;
     g = cn.g ; n = pl} ;
  AttrAPsupPl ap cn = 
    {s = table{ad => table{c => (ap.s!sup).s1!(attr (plA ad c))
                                    ++ (cn.s!pl)!c ++ (ap.s!sup).s2!c}} ;
     g = cn.g ; n = pl} ;

  AttrAPemptySg cn = {s = table{ad => cn.s!sg} ; g = cn.g ; n = sg} ;
  AttrAPemptyPl cn = {s = table{ad => cn.s!pl} ; g = cn.g ; n = pl} ;

  UseA a = 
    {s = table{deg => {s1 = table{form => a.s!deg!form} ; 
                       s2 = table{_ => ""}}} ; 
     c = simpl} ;
  CompA a np   = 
    {s = table{pos => {s1 = table{form => "so"++ (a.s!pos)!form} ; 
                       s2 = table{c => "wie" ++ np.s!c}} ;
               cmp => {s1 = table{form => (a.s!cmp)!form} ; 
                       s2 = table{c => "als" ++ np.s!c}} ;
               sup => {s1 = table{form => (a.s!sup)!form} ; 
                       s2 = table{_ => (case np.n of {pl => "von" ++ np.s!dat ; 
                                                      sg => variants {} })}}} ;
     c = split} ;

  Mistake      = regCN "Fehler" mask ;
--  Error        = regCN "Irrtum" mask ;
  Error        = reg2N "Irrtum" "Irrtümer" mask ; 
  Big          = regA  "klein" ;
  Is           = {s = table {pl => "sind" ; sg => "ist" }} ; 

  The  = {s = table {mask => table {sg => table {nom => "der" ; 
                                                 gen => "des" ;
                                                 dat => "dem" ;
                                                 akk => "den" } ;
                                    pl => table {nom => "die" ;
                                                 gen => "der" ;
                                                 dat => "den" ;
                                                 akk => "die" }} ;
                     fem  => table {sg => table {nom => "die" ; 
                                                 gen => "der" ;
                                                 dat => "der" ;
                                                 akk => "die" } ;
                                    pl => table {nom => "die" ;
                                                 gen => "der" ;
                                                 dat => "den" ;
                                                 akk => "die" }} ;
                     neut => table {sg => table {nom => "das" ; 
                                                 gen => "des" ;
                                                 dat => "dem" ;
                                                 akk => "das" } ;
                                    pl => table {nom => "die" ;
                                                 gen => "der" ;
                                                 dat => "den" ;
                                                 akk => "die" }}} ;
          d = sw };
  An   = {s = table {mask => table {sg => table {nom => "ein" ; 
                                                 gen => "eines" ;
                                                 dat => "einem" ;
                                                 akk => "einen" } ;
                                    pl => table {nom => "einige" ;
                                                 gen => "einiger" ;
                                                 dat => "einigen" ;
                                                 akk => "einige" }} ;
                     fem  => table {sg => table {nom => "eine" ; 
                                                 gen => "einer" ;
                                                 dat => "einer" ;
                                                 akk => "eine" } ;
                                    pl => table {nom => "einige" ;
                                                 gen => "einiger" ;
                                                 dat => "einigen" ;
                                                 akk => "einige" }} ;
                     neut => table {sg => table {nom => "ein" ; 
                                                 gen => "eines" ;
                                                 dat => "einem" ;
                                                 akk => "ein" } ;
                                    pl => table {nom => "einige" ;
                                                 gen => "einiger" ;
                                                 dat => "einigen" ;
                                                 akk => "einige" }}} ;
          d = ge };
  This = {s = table {mask => table {sg => table {nom => "dieser" ; 
                                                 gen => "dieses" ;
                                                 dat => "diesem" ;
                                                 akk => "diesen" } ;
                                    pl => table {nom => "diese" ;
                                                 gen => "dieser" ;
                                                 dat => "diesen" ;
                                                 akk => "diese" }} ;
                     fem  => table {sg => table {nom => "diese" ; 
                                                 gen => "dieser" ;
                                                 dat => "dieser" ;
                                                 akk => "diese" } ;
                                    pl => table {nom => "diese" ;
                                                 gen => "dieser" ;
                                                 dat => "diesen" ;
                                                 akk => "diese" }} ;
                     neut => table {sg => table {nom => "dieses" ; 
                                                 gen => "dieses" ;
                                                 dat => "diesem" ;
                                                 akk => "dieses" } ;
                                    pl => table {nom => "diese" ;
                                                 gen => "dieser" ;
                                                 dat => "diesen" ;
                                                 akk => "diese" }}} ;
          d = sw };
  
}

