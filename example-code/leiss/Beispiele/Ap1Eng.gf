concrete Ap1Eng of Ap1 = in {
param
   Comp = pos | cmp | sup ;
   Cont = simpl | split ;
lincat 
   Art, CN, CopV, N1, NP, S = {s : Str} ; 
   A  = {s : Comp => Str} ;
   AP = {s : Comp => {s1 : Str ; s2 : Str} ; c : Cont} ;
lin 
   This cn      = {s = "this" ++ cn.s} ;
   Det art n1   = {s = art.s ++ n1.s} ;

   PredNP np1 cop np2 = {s = np1.s ++ cop.s ++ np2.s} ;
   PredAPpos np cop ap = 
     {s = np.s ++ cop.s ++ (ap.s!pos).s1 ++ (ap.s!pos).s2} ;
   PredAPcmp np cop ap = 
     {s = np.s ++ cop.s ++ (ap.s!cmp).s1 ++ (ap.s!cmp).s2} ;
   PredAPsup np cop ap = 
     {s = np.s ++ cop.s ++ "the" ++ (ap.s!sup).s1 ++ (ap.s!sup).s2} ;

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

   Mistake      = {s = "mistake"} ;
   Error        = {s = "error"} ;
   Big          = 
     {s = table{pos => "big" ; cmp => "bigger" ; sup => "biggest"}} ;
   Is           = {s = "is"} ;
   The          = {s = "the"} ;
   An           = {s = "a"} ;
}

