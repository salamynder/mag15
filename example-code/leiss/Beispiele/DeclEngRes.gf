resource DeclEngRes = {
  param Comp = pos | cmp | sup ;
        Number = sg | pl ;

  oper regA : Str -> {
    s : Comp => Str 
  }
  = \str_0 -> {
    s : Comp => Str = table Tok { -- Tok at least in 2015 is equivalent to Str...
                                  -- (Predef.dp : Integer -> Str -> Str)
      "g" => table (Comp ) {
        DeclEngRes.pos => str_0 ;
        DeclEngRes.cmp => str_0 + "ger" ;
        DeclEngRes.sup => str_0 + "gest" 
      } ;
      "y" => table (Comp ) {
        DeclEngRes.pos => str_0 ;
        DeclEngRes.cmp => Predef.tk 1 str_0 + "ier" ;
        DeclEngRes.sup => Predef.tk 1 str_0 + "iest" 
      } ;
      _ => table (Comp ) {
        DeclEngRes.pos => str_0 ;
        DeclEngRes.cmp => str_0 + "er" ;
        DeclEngRes.sup => str_0 + "est" 
      }
      }
    ! Predef.dp 1 str_0 
  } ;
  oper regCN : Str -> {
    s : Number => Str 
  }
  = \x_3 -> {
    s : Number => Str = -- label with type annot: optional
      table Number { -- argument type annot: optional
        sg => x_3 ;
        pl => x_3 + "s" 
      }
    } ;

}
