abstract MitBrilleAbs = {
  cat
    S ; NP ; VP ; V2 ; V3 ; PPA ;
  fun
    Pred : NP -> VP -> S ;

    Ernie, TheMan : NP ;

    --VP
    Compl_V2 : V2 -> NP -> VP ;

    Compl_V3 : V3 -> NP -> PPA -> VP ;

    Saw_V2 : V2 ;
    Saw_V3 : V3 ;

    --PPA (prepositional phrase attachment)
    MitBrille : PPA ;
}