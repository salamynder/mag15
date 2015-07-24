resource DeclGer = {

  param Number = sg | pl ;
  param Gender = mask | fem | neut ;
  param Case   = nom | gen | dat | akk ;

  oper regCN : Str -> Gender -> {s : Number => Case => Str ; g : Gender}
            = \x,y -> {s = table{ sg => table{gen => x + "s" ; _ => x} ;
                                  pl => table{dat => x + "n" ; _ => x} } ;
                       g = y} ;
oper reg2N : Str -> Str -> Gender -> {s : Number => Case => Str ; g : Gender} =
                  \x,y,Gen -> {s = table{sg => table{gen => x +"s" ; _ => x} ; 
                                         pl => table{gen => y +"n" ; _ => y}} ;
                               g = Gen} ;

  param Comp = pos | cmp | sup ;
  param Adekl  = st | sw | ge ; 
  param FormA  = sgA Adekl Gender Case | plA Adekl Case ;
  param UseAP = attr FormA | pred ;

  oper regA : Str -> {s : (Comp => UseAP => Str)} = 
         \str -> {s = table{ pos => mkFormsA pos str  ; 
                             cmp => mkFormsA cmp (str+"er")  ; 
                             sup => mkFormsA sup (str+"st") }} ;

  oper mkFormsA : Comp -> Str -> (UseAP => Str) =
        \c -> \str -> 
                table{ pred => case c of {sup => str+"en" ;
                                          _   => str } ;
                       --  st = pronominal = Endungen wie bei dies-.
                       attr (sgA st mask nom) => str+"er" ;
                       attr (sgA st mask gen) => str+"es" ;
                       attr (sgA st mask dat) => str+"em" ;
                       attr (sgA st mask akk) => str+"en" ;
                       -- 
                       attr (sgA st fem nom) => str+"e"  ;
                       attr (sgA st fem gen) => str+"er" ;
                       attr (sgA st fem dat) => str+"er" ;
                       attr (sgA st fem akk) => str+"e"  ;
                       -- 
                       attr (sgA st neut nom) => str+"es" ;
                       attr (sgA st neut gen) => str+"es" ;
                       attr (sgA st neut dat) => str+"em" ;
                       attr (sgA st neut akk) => str+"es" ; 
                       --  sw = nominal = nach bestimmtem Artikel 'der'
                       attr (sgA sw mask nom) => str+"e"  ;
                       attr (sgA sw mask gen) => str+"en" ;
                       attr (sgA sw mask dat) => str+"en" ;
                       attr (sgA sw mask akk) => str+"en" ;
                       -- 
                       attr (sgA sw fem nom) => str+"e"  ;
                       attr (sgA sw fem gen) => str+"en" ;
                       attr (sgA sw fem dat) => str+"en" ;
                       attr (sgA sw fem akk) => str+"e"  ;
                       -- 
                       attr (sgA sw neut nom) => str+"e"  ;
                       attr (sgA sw neut gen) => str+"en" ;
                       attr (sgA sw neut dat) => str+"en" ;
                       attr (sgA sw neut akk) => str+"e"  ; 
                       --  ge = nach unbestimmtem Artikel 'ein'
                       attr (sgA ge mask nom) => str+"er" ;
                       attr (sgA ge mask gen) => str+"en" ;
                       attr (sgA ge mask dat) => str+"en" ;
                       attr (sgA ge mask akk) => str+"en" ;
                       --
                       attr (sgA ge fem nom) => str+"e"  ;
                       attr (sgA ge fem gen) => str+"en" ;
                       attr (sgA ge fem dat) => str+"en" ;
                       attr (sgA ge fem akk) => str+"e"  ;
                       --
                       attr (sgA ge neut nom) => str+"es"  ;
                       attr (sgA ge neut gen) => str+"en" ;
                       attr (sgA ge neut dat) => str+"en" ;
                       attr (sgA ge neut akk) => str+"es" ;
                       --
                       attr (plA sw _) => str+"en" ;
                       attr (plA _ nom) => str+"e" ;
                       attr (plA _ gen) => str+"er" ;
                       attr (plA _ dat) => str+"en" ;
                       attr (plA _ akk) => str+"e" } ;
}

