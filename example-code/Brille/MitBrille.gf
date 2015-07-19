concrete MitBrille of MitBrilleAbs = {
  lincat
    S , NP , VP , V2 , V3 , PPA = Str ;
  lin
    Pred np vp = np ++ vp ;

    Ernie = "Ernie" ;
    TheMan = "the man" ;

    --VP
    Compl_V2 v2 np = v2 ++ np ;

    Compl_V3 v3 np ppa = v3 ++ np ++ ppa ;

    Saw_V2 = "saw" ;
    Saw_V3 = "saw" ;

    --PPA (prepositional phrase attachment)
    MitBrille = "with the binoculars" ;
}
