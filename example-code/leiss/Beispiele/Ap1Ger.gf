concrete Ap1Ger of Ap1 = {
param
   Comp = pos | cmp | sup ;
lincat 
   Art, CN, CopV, N1, NP, S = {s : Str} ; 
   A  = {s : Comp => Str} ;
   AP = {s : Comp => {s1 : Str ; s2 : Str}} ;
lin 
   This cn      = {s = "dieser" ++ cn.s} ;
   Det art n1   = {s = art.s ++ n1.s} ;

   PredNP np1 cop np2 = {s = np1.s ++ cop.s ++ np2.s} ;
   PredAPpos np cop ap = 
     {s = np.s ++ cop.s ++ (ap.s!pos).s1 ++ (ap.s!pos).s2} ;
   PredAPcmp np cop ap = 
     {s = np.s ++ cop.s ++ (ap.s!cmp).s1 ++ (ap.s!cmp).s2} ;
   PredAPsup np cop ap = 
     {s = np.s ++ cop.s ++ "der" ++ (ap.s!sup).s1 ++ (ap.s!sup).s2} ;

   AttrAPpos ap cn = {s = (ap.s!pos).s1 ++ cn.s ++ (ap.s!pos).s2} ;
   AttrAPcmp ap cn = {s = (ap.s!cmp).s1 ++ cn.s ++ (ap.s!cmp).s2} ;
   AttrAPsup ap cn = {s = (ap.s!sup).s1 ++ cn.s ++ (ap.s!sup).s2} ;

   UseA a        = {s = table{pos => {s1 = a.s!pos ; s2 = ""} ;
                              cmp => {s1 = a.s!cmp ; s2 = ""} ;
                              sup => {s1 = a.s!sup ; s2 = ""}}} ;

   CompA a np     = 
     {s = table{pos => {s1 = "ebenso"++ (a.s!pos) ; s2 = "wie" ++ np.s} ;
                cmp => {s1 = (a.s!cmp) ; s2 = "als" ++ np.s} ;
                sup => {s1 = (a.s!sup) ; s2 = "aller" ++ np.s}}} ;

   Mistake      = {s = "Fehler"} ;
   Error        = {s = "Irrtum"} ;
   Big          = {s = table{pos => "gross" ; cmp => "grösser" ; sup => "grösst"}} ;
   Is           = {s = "ist"} ;
   The          = {s = "der"} ;
   An           = {s = "ein"} ;
}
