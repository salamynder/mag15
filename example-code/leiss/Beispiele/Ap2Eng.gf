concrete Ap2Eng of Ap2 = open DeclEng in {
--# -path=.:prelude    
param
   Cont = simpl | split ;  -- Comp, Number in DeclEng
lincat 
   S = {s : Str} ; 
   Art, CopV, CN = {s : Number => Str} ;
   N1, NP = {s : Str ; n : Number} ;
   A  = {s : Comp => Str} ;
   AP = {s : Comp => {s1 : Str ; s2 : Str} ; c : Cont} ;
lin 
   Det art n1   = {s = art.s!(n1.n) ++ n1.s ; n = n1.n} ;

   PredNP np1 cop np2 = {s = np1.s ++ cop.s!(np1.n) ++ np2.s} ;

   PredAPpos np cop ap = 
     {s = np.s ++ cop.s!(np.n) ++ (ap.s!pos).s1 ++ (ap.s!pos).s2} ;
   PredAPcmp np cop ap = 
     {s = np.s ++ cop.s!(np.n) ++ (ap.s!cmp).s1 ++ (ap.s!cmp).s2} ;
   PredAPsup np cop ap = 
     {s = np.s ++ cop.s!(np.n) ++ "the" ++ (ap.s!sup).s1 ++ (ap.s!sup).s2} ;

   AttrAPposSg ap cn = 
     {s = (ap.s!pos).s1 ++ (case ap.c of {simpl => "" ; split => "a"})
                        ++ cn.s!sg ++ (ap.s!pos).s2 ;  n = sg} ;
   AttrAPcmpSg ap cn = 
     {s = (ap.s!cmp).s1 ++ cn.s!sg ++ (ap.s!cmp).s2 ; n = sg} ;
   AttrAPsupSg ap cn = 
     {s = (ap.s!sup).s1 ++ cn.s!sg ++ (ap.s!sup).s2 ; n = sg} ;

   AttrAPposPl ap cn = 
     {s = (ap.s!pos).s1 ++ cn.s!pl ++ (ap.s!pos).s2 ; n = pl} ;
   AttrAPcmpPl ap cn = 
     {s = (ap.s!cmp).s1 ++ cn.s!pl ++ (ap.s!cmp).s2 ; n = pl} ;
   AttrAPsupPl ap cn = 
     {s = (ap.s!sup).s1 ++ cn.s!pl ++ (ap.s!sup).s2 ; n = pl} ;

   AttrAPemptySg cn = {s = cn.s!sg ; n = sg} ;
   AttrAPemptyPl cn = {s = cn.s!pl ; n = pl} ;

   UseA a       = {s = table{deg => {s1 = a.s!deg ; s2 = ""}} ; 
                   c = simpl} ;
   CompA a np   = 
     {s = table{pos => {s1 = "as"++ a.s!pos ; s2 = "as" ++ np.s} ;
                cmp => {s1 = a.s!cmp ; s2 = "than" ++ np.s} ;
                sup => {s1 = a.s!sup ; 
                        s2 = (case np.n of {pl => "of" ++ np.s ; 
                                            sg => variants {} })}} ;
      c = split} ;

   Mistake      = regCN "mistake" ;
   Error        = regCN "error" ;
   Big          = regA "big" ;
   Is           = {s = table {pl => "are" ; sg => "is" }} ;
   The          = {s = table Number { _ => "the"}} ;
   An           = {s = table {sg => "a" ; pl => ""}} ;
   This         = {s = table {sg => "this" ; pl => "these"}} ;
}

