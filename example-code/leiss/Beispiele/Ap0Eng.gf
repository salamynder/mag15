concrete Ap0Eng of Ap0 = {
lincat 
   Art, A, CN, CopV, N1, NP, AP, S = {s : Str} ; 
lin 
   This cn      = {s = "this" ++ cn.s} ;
   Det art n1   = {s = art.s ++ n1.s} ;

   PredNP np1 cop np2 = {s = np1.s ++ cop.s ++ np2.s} ;
   PredAP np cop ap = {s = np.s ++ cop.s ++ ap.s} ;

   AttrAP ap cn  = {s = ap.s ++ cn.s} ;
   UseA a        = {s = a.s} ;

   Mistake      = {s = "mistake"} ;
   Error        = {s = "error"} ;
   Big          = {s = "big"} ;
   Is           = {s = "is"} ;
   The          = {s = "the"} ;
   An           = {s = "a"} ;
}

