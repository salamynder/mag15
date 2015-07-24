resource DeclEngRes = open (Prelude = Prelude)in {
  param Comp = pos | cmp | sup ;
        Number = sg | pl ;

  oper regA : Str -> {
    s : {DeclEngRes.Comp} => Str 
  }
  = \str_0 -> {
    s : {DeclEngRes.Comp} => Str = table Tok {
      "g" => table ({DeclEngRes.Comp} ) {
        DeclEngRes.pos => str_0 ;
        DeclEngRes.cmp => str_0 + "ger" ;
        DeclEngRes.sup => str_0 + "gest" 
      } ;
      "y" => table ({DeclEngRes.Comp} ) {
        DeclEngRes.pos => str_0 ;
        DeclEngRes.cmp => % Predef.tk 1 str_0 + "ier" ;
        DeclEngRes.sup => % Predef.tk 1 str_0 + "iest" 
      } ;
      h__1 => table ({DeclEngRes.Comp} ) {
        DeclEngRes.pos => str_0 ;
        DeclEngRes.cmp => str_0 + "er" ;
        DeclEngRes.sup => str_0 + "est" 
      }
      }
    ! % Predef.dp 1 str_0 
  } ;
  oper regCN : Str -> {
    s : {DeclEngRes.Number} => Str 
  }
  = \x_3 -> {
    s : {DeclEngRes.Number} => Str = table ({DeclEngRes.Number} ) {
      DeclEngRes.sg => x_3 ;
      DeclEngRes.pl => x_3 + "s" 
    }
    } ;
  }
