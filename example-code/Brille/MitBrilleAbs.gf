abstract MitBrilleAbs = {
  cat
    S ; NP ; VP ; V ; PPA ;
  fun
    Pred : NP -> VP -> S ;

    Ernie, TheMan : NP ;
    TheManWith : PPA -> NP ;

    --VP
    Compl_V2 : V -> NP -> VP ;

    Compl_V3 : V -> NP -> PPA -> VP ;

    Saw : V ;

    --PPA (prepositional phrase attachment)
    WithBin : PPA ;
}