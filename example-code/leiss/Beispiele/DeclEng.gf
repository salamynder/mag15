resource DeclEng = open Prelude in {
--# -path=.:prelude    
-- Compiler-Instruktion zur Suche von $GF-Lib-Path/prelude/Prelude.gf

param Number = sg | pl ;
param Comp = pos | cmp | sup ;

oper regCN : Str -> {s : Number => Str}
       = \x -> {s = table { sg => x ; pl => x + "s" }} ;

oper regA : Str -> {s : Comp => Str} = 
           \str -> let tab = case last str of 
                         { "g" => table{ pos => str ;
                                         cmp => str+"g"+"er" ; 
                                         sup => str+"g"+"est" } ;
                           "y" => table{ pos => str ;
                                         cmp => (init str) +"i"+"er" ;
                                         sup => (init str) +"i"+"est" } ;
                           _ => table{ pos => str ; 
                                       cmp => str+"er" ; 
                                       sup => str+"est" }
                         } in {s = tab} ;
}

