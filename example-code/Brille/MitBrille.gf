concrete MitBrille of MitBrilleAbs = {
  lincat
    S , NP , VP , V , PPA = Str ;
  lin
    Pred np vp = np ++ vp ;

    Ernie = "Ernie" ;

    -- 1. Fall: WithBin gehört eher zum Verb
    Compl_V3 v3 np ppa = v3 ++ np ++ ppa ;
    
    -- these three shared in both cases:
    Saw = "saw" ;
    TheMan = "the man" ;
    WithBin = "with the binoculars" ; -- PPA (prepositional phrase attachment)

    -- 2. Fall: WithBin gehört eher zu TheMan
    Compl_V2 v2 np = v2 ++ np ;
    TheManWith ppa = "the man" ++ ppa ;
}
