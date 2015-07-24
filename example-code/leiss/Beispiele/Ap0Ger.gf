concrete Ap0Ger of Ap0 = {
param 
   Use = attr | pred ;
lincat 
   Art, CN, CopV, N1, NP, S = {s : Str} ; 
   A, AP = {s : Use => Str} ;
lin 
   This cn      = {s = "dieser" ++ cn.s} ;
   Det art n1   = {s = art.s ++ n1.s} ;

   PredNP np1 cop np2 = {s = np1.s ++ cop.s ++ np2.s} ;
   PredAP np cop ap = {s = np.s ++ cop.s ++ ap.s!pred} ;

   AttrAP ap cn  = {s = ap.s!attr ++ cn.s} ;
   UseA a        = {s = a.s} ;

   Mistake      = {s = "Fehler"} ;
   Error        = {s = "Irrtum"} ;
   Big          = {s = table{attr => "grosser" ; pred => "gross"}} ;
   Is           = {s = "ist"} ;
   The          = {s = "der"} ;
   An           = {s = "ein"} ;
}

