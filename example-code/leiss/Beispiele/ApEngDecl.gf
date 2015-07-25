concrete ApEngDecl of Ap1 = open DeclEngRes in {
param
   Cont = simpl | split ;  -- Comp, Numerus in DeclEngRes

lincat 
   Art, S = {s : Str} ; 
   CopV, CN = {s : Number => Str} ;
   N1, NP = {s : Str ; n : Number} ;
   A  = {s : Comp => Str} ;
   AP = {s : Comp => {s1 : Str ; s2 : Str} ; c : Cont} ;

lin 
   This cn      = {s = "this" ++ cn.s!pl ; n = sg} ; 
   Det art n1   = {s = art.s ++ n1.s ; n = n1.n} ;

   PredNP np1 cop np2 = {s = np1.s ++ cop.s!(np1.n) ++ np2.s} ;

   PredAPpos np cop ap = 
     {s = np.s ++ cop.s!(np.n) ++ (ap.s!pos).s1 ++ (ap.s!pos).s2} ;

   PredAPcmp np cop ap = 
     {s = np.s ++ cop.s!(np.n) ++ (ap.s!cmp).s1 ++ (ap.s!cmp).s2} ;

   PredAPsup np cop ap = 
     {s = np.s ++ cop.s!(np.n) ++ "the" ++ (ap.s!sup).s1 ++ (ap.s!sup).s2} ;

   -- Wie waehlt man hier einen Numerus?:
   AttrAPpos ap cn = 
     {s = (ap.s!pos).s1 ++ (case ap.c of {simpl => "" ; split => "a"})
                        ++ cn.s ++ (ap.s!pos).s2 } ;

   AttrAPcmp ap cn = {s = (ap.s!cmp).s1 ++ cn.s ++ (ap.s!cmp).s2} ;

   AttrAPsup ap cn = {s = (ap.s!sup).s1 ++ cn.s ++ (ap.s!sup).s2} ;


   UseA a       = {s = table{deg => {s1 = a.s!deg ; s2 = ""}} ; 
                   c = simpl} ;
   CompA a np   = 
     {s = table{pos => {s1 = "as"++ (a.s!pos) ; s2 = "as" ++ np.s} ;
                cmp => {s1 = (a.s!cmp) ; s2 = "than" ++ np.s} ;
                sup => {s1 = (a.s!sup) ; s2 = "of_all" ++ np.s}} ;
      c = split} ;

   Mistake      = regCN "mistake" ;
   Error        = regCN "error" ;
   Big          = {s = table {
                     pos => "big" ;
                     cmp => "bigger" ;
                     sup => "biggest"}} ;
   Is           = {s = table {pl => "are" ; sg => "is" }} ;
   -- Art:
   The          = {s = "the"} ;
   An           = {s = "a"} ;
}

