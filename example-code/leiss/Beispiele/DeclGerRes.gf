resource DeclGerRes = {
  param Adekl = st | sw | ge ;
  param Case = nom | gen | dat | akk ;
  param Comp = pos | cmp | sup ;
  param FormA = sgA (_ : {DeclGerRes.Adekl} ) (_ : {DeclGerRes.Gender} ) (_ : {DeclGerRes.Case} ) | plA (_ : {DeclGerRes.Adekl} ) (_ : {DeclGerRes.Case} ) ;
  param Gender = mask | fem | neut ;
  param Number = sg | pl ;
  param UseAP = attr (_ : {DeclGerRes.FormA} ) | pred ;
  oper mkFormsA : {DeclGerRes.Comp} -> Str -> {DeclGerRes.UseAP} => Str = \c_0 -> \str_1 -> table ({DeclGerRes.UseAP} ) {
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.nom)=> str_1 + "er" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.gen)=> str_1 + "es" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.dat)=> str_1 + "em" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.akk)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.nom)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.gen)=> str_1 + "er" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.dat)=> str_1 + "er" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.akk)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.nom)=> str_1 + "es" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.gen)=> str_1 + "es" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.dat)=> str_1 + "em" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.akk)=> str_1 + "es" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.nom)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.gen)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.dat)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.akk)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.nom)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.gen)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.dat)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.akk)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.nom)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.gen)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.dat)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.akk)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.nom)=> str_1 + "er" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.gen)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.dat)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.akk)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.nom)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.gen)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.dat)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.akk)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.nom)=> str_1 + "es" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.gen)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.dat)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.akk)=> str_1 + "es" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.nom)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.gen)=> str_1 + "er" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.dat)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.akk)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.nom)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.gen)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.dat)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.akk)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.nom)=> str_1 + "e" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.gen)=> str_1 + "er" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.dat)=> str_1 + "en" ;
    DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.akk)=> str_1 + "e" ;
    DeclGerRes.pred => table ({DeclGerRes.Comp} ) {
      DeclGerRes.pos => str_1 ;
      DeclGerRes.cmp => str_1 ;
      DeclGerRes.sup => str_1 + "en" 
    }
    ! c_0 
  } ;
  oper reg2N : Str -> Str -> {DeclGerRes.Gender} -> {
    g : {DeclGerRes.Gender} ;
    s : {DeclGerRes.Number} => {DeclGerRes.Case} => Str 
  }
  = \x_8 -> \y_9 -> \Gen_10 -> {
    g : {DeclGerRes.Gender} = Gen_10 ;
    s : {DeclGerRes.Number} => {DeclGerRes.Case} => Str = table ({DeclGerRes.Number} ) {
      DeclGerRes.sg => table ({DeclGerRes.Case} ) {
        DeclGerRes.nom => x_8 ;
        DeclGerRes.gen => x_8 + "s" ;
        DeclGerRes.dat => x_8 ;
        DeclGerRes.akk => x_8 
      } ;
      DeclGerRes.pl => table ({DeclGerRes.Case} ) {
        DeclGerRes.nom => y_9 ;
        DeclGerRes.gen => y_9 + "n" ;
        DeclGerRes.dat => y_9 ;
        DeclGerRes.akk => y_9 
      }
      }
    } ;
  oper regA : Str -> {
    s : {DeclGerRes.Comp} => {DeclGerRes.UseAP} => Str 
  }
  = \str_13 -> {
    s : {DeclGerRes.Comp} => {DeclGerRes.UseAP} => Str = table ({DeclGerRes.Comp} ) {
      DeclGerRes.pos => table ({DeclGerRes.UseAP} ) {
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.nom)=> str_13 + "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.gen)=> str_13 + "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.dat)=> str_13 + "em" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.akk)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.nom)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.gen)=> str_13 + "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.dat)=> str_13 + "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.akk)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.nom)=> str_13 + "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.gen)=> str_13 + "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.dat)=> str_13 + "em" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.akk)=> str_13 + "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.nom)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.gen)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.dat)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.akk)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.nom)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.gen)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.dat)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.akk)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.nom)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.gen)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.dat)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.akk)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.nom)=> str_13 + "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.gen)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.dat)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.akk)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.nom)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.gen)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.dat)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.akk)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.nom)=> str_13 + "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.gen)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.dat)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.akk)=> str_13 + "es" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.nom)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.gen)=> str_13 + "er" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.dat)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.akk)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.nom)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.gen)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.dat)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.akk)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.nom)=> str_13 + "e" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.gen)=> str_13 + "er" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.dat)=> str_13 + "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.akk)=> str_13 + "e" ;
        DeclGerRes.pred => str_13 
      } ;
      DeclGerRes.cmp => table ({DeclGerRes.UseAP} ) {
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.nom)=> (str_13 + "er")+ "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.gen)=> (str_13 + "er")+ "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.dat)=> (str_13 + "er")+ "em" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.akk)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.nom)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.gen)=> (str_13 + "er")+ "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.dat)=> (str_13 + "er")+ "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.akk)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.nom)=> (str_13 + "er")+ "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.gen)=> (str_13 + "er")+ "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.dat)=> (str_13 + "er")+ "em" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.akk)=> (str_13 + "er")+ "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.nom)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.gen)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.dat)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.akk)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.nom)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.gen)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.dat)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.akk)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.nom)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.gen)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.dat)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.akk)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.nom)=> (str_13 + "er")+ "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.gen)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.dat)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.akk)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.nom)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.gen)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.dat)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.akk)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.nom)=> (str_13 + "er")+ "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.gen)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.dat)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.akk)=> (str_13 + "er")+ "es" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.nom)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.gen)=> (str_13 + "er")+ "er" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.dat)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.akk)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.nom)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.gen)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.dat)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.akk)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.nom)=> (str_13 + "er")+ "e" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.gen)=> (str_13 + "er")+ "er" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.dat)=> (str_13 + "er")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.akk)=> (str_13 + "er")+ "e" ;
        DeclGerRes.pred => str_13 + "er" 
      } ;
      DeclGerRes.sup => table ({DeclGerRes.UseAP} ) {
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.nom)=> (str_13 + "st")+ "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.gen)=> (str_13 + "st")+ "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.dat)=> (str_13 + "st")+ "em" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.mask DeclGerRes.akk)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.nom)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.gen)=> (str_13 + "st")+ "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.dat)=> (str_13 + "st")+ "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.fem DeclGerRes.akk)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.nom)=> (str_13 + "st")+ "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.gen)=> (str_13 + "st")+ "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.dat)=> (str_13 + "st")+ "em" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.st DeclGerRes.neut DeclGerRes.akk)=> (str_13 + "st")+ "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.nom)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.gen)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.dat)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.mask DeclGerRes.akk)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.nom)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.gen)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.dat)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.fem DeclGerRes.akk)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.nom)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.gen)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.dat)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.sw DeclGerRes.neut DeclGerRes.akk)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.nom)=> (str_13 + "st")+ "er" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.gen)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.dat)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.mask DeclGerRes.akk)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.nom)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.gen)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.dat)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.fem DeclGerRes.akk)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.nom)=> (str_13 + "st")+ "es" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.gen)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.dat)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.sgA DeclGerRes.ge DeclGerRes.neut DeclGerRes.akk)=> (str_13 + "st")+ "es" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.nom)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.gen)=> (str_13 + "st")+ "er" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.dat)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.st DeclGerRes.akk)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.nom)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.gen)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.dat)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.sw DeclGerRes.akk)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.nom)=> (str_13 + "st")+ "e" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.gen)=> (str_13 + "st")+ "er" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.dat)=> (str_13 + "st")+ "en" ;
        DeclGerRes.attr (DeclGerRes.plA DeclGerRes.ge DeclGerRes.akk)=> (str_13 + "st")+ "e" ;
        DeclGerRes.pred => (str_13 + "st")+ "en" 
      }
      }
    } ;
  oper regCN : Str -> {DeclGerRes.Gender} -> {
    g : {DeclGerRes.Gender} ;
    s : {DeclGerRes.Number} => {DeclGerRes.Case} => Str 
  }
  = \x_14 -> \y_15 -> {
    g : {DeclGerRes.Gender} = y_15 ;
    s : {DeclGerRes.Number} => {DeclGerRes.Case} => Str = table ({DeclGerRes.Number} ) {
      DeclGerRes.sg => table ({DeclGerRes.Case} ) {
        DeclGerRes.nom => x_14 ;
        DeclGerRes.gen => x_14 + "s" ;
        DeclGerRes.dat => x_14 ;
        DeclGerRes.akk => x_14 
      } ;
      DeclGerRes.pl => table ({DeclGerRes.Case} ) {
        DeclGerRes.nom => x_14 ;
        DeclGerRes.gen => x_14 ;
        DeclGerRes.dat => x_14 + "n" ;
        DeclGerRes.akk => x_14 
      }
      }
    } ;
  }
