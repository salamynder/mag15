resource DeclGerRes = {

  param
    Adekl = st | sw | ge ;
    Case = nom | gen | dat | akk ;
    Comp = pos | cmp | sup ;
    FormA = sgA (_ : Adekl ) (_ : Gender ) (_ : Case )
          | plA (_ : Adekl ) (_ : Case ) ;
    Gender = mask | fem | neut ;
    Number = sg | pl ;
    UseAP = attr (_ : FormA ) | pred ;

  oper
    mkFormsA : Comp -> Str -> UseAP => Str
         = \c_0 -> \str_1 -> table UseAP {
    attr (sgA st mask nom ) => str_1 + "er" ;
    attr (sgA st mask gen ) => str_1 + "es" ;
    attr (sgA st mask dat ) => str_1 + "em" ;
    attr (sgA st mask akk ) => str_1 + "en" ;
    attr (sgA st fem  nom ) => str_1 + "e" ;
    attr (sgA st fem  gen ) => str_1 + "er" ;
    attr (sgA st fem  dat ) => str_1 + "er" ;
    attr (sgA st fem  akk ) => str_1 + "e" ;
    attr (sgA st neut nom ) => str_1 + "es" ;
    attr (sgA st neut gen ) => str_1 + "es" ;
    attr (sgA st neut dat ) => str_1 + "em" ;
    attr (sgA st neut akk ) => str_1 + "es" ;
    attr (sgA sw mask nom ) => str_1 + "e" ;
    attr (sgA sw mask gen ) => str_1 + "en" ;
    attr (sgA sw mask dat ) => str_1 + "en" ;
    attr (sgA sw mask akk ) => str_1 + "en" ;
    attr (sgA sw fem  nom ) => str_1 + "e" ;
    attr (sgA sw fem  gen ) => str_1 + "en" ;
    attr (sgA sw fem  dat ) => str_1 + "en" ;
    attr (sgA sw fem  akk ) => str_1 + "e" ;
    attr (sgA sw neut nom ) => str_1 + "e" ;
    attr (sgA sw neut gen ) => str_1 + "en" ;
    attr (sgA sw neut dat ) => str_1 + "en" ;
    attr (sgA sw neut akk ) => str_1 + "e" ;
    attr (sgA ge mask nom ) => str_1 + "er" ;
    attr (sgA ge mask gen ) => str_1 + "en" ;
    attr (sgA ge mask dat ) => str_1 + "en" ;
    attr (sgA ge mask akk ) => str_1 + "en" ;
    attr (sgA ge fem  nom ) => str_1 + "e" ;
    attr (sgA ge fem  gen ) => str_1 + "en" ;
    attr (sgA ge fem  dat ) => str_1 + "en" ;
    attr (sgA ge fem  akk ) => str_1 + "e" ;
    attr (sgA ge neut nom ) => str_1 + "es" ;
    attr (sgA ge neut gen ) => str_1 + "en" ;
    attr (sgA ge neut dat ) => str_1 + "en" ;
    attr (sgA ge neut akk ) => str_1 + "es" ;

    attr (plA st nom)       => str_1 + "e" ;
    attr (plA st gen)       => str_1 + "er" ;
    attr (plA st dat)       => str_1 + "en" ;
    attr (plA st akk)       => str_1 + "e" ;
    attr (plA sw nom)       => str_1 + "en" ;
    attr (plA sw gen)       => str_1 + "en" ;
    attr (plA sw dat)       => str_1 + "en" ;
    attr (plA sw akk)       => str_1 + "en" ;
    attr (plA ge nom)       => str_1 + "e" ;
    attr (plA ge gen)       => str_1 + "er" ;
    attr (plA ge dat)       => str_1 + "en" ;
    attr (plA ge akk)       => str_1 + "e" ;
    pred => table Comp {
      pos => str_1 ;
      cmp => str_1 ;
      sup => str_1 + "en" 
    }
    ! c_0 
  } ;
  oper reg2N : Str -> Str -> Gender -> {
    g : Gender ;
    s : Number => Case => Str 
  }
  = \x_8 -> \y_9 -> \Gen_10 -> {
    g : Gender = Gen_10 ;
    s : Number => Case => Str = table Number {
      sg => table Case {
        nom => x_8 ;
        gen => x_8 + "s" ;
        dat => x_8 ;
        akk => x_8 
      } ;
      pl => table Case {
        nom => y_9 ;
        gen => y_9 + "n" ;
        dat => y_9 ;
        akk => y_9 
      }
      }
    } ;
  oper regA : Str -> {
    s : Comp => UseAP => Str 
  }
  = \str_13 -> {
    s : Comp => UseAP => Str = table Comp {
      pos => table UseAP {
        attr (sgA st mask nom)  => str_13 + "er" ;
        attr (sgA st mask gen)  => str_13 + "es" ;
        attr (sgA st mask dat)  => str_13 + "em" ;
        attr (sgA st mask akk)  => str_13 + "en" ;
        attr (sgA st fem  nom)  => str_13 + "e" ;
        attr (sgA st fem  gen)  => str_13 + "er" ;
        attr (sgA st fem  dat)  => str_13 + "er" ;
        attr (sgA st fem  akk)  => str_13 + "e" ;
        attr (sgA st neut nom)  => str_13 + "es" ;
        attr (sgA st neut gen)  => str_13 + "es" ;
        attr (sgA st neut dat)  => str_13 + "em" ;
        attr (sgA st neut akk)  => str_13 + "es" ;
        attr (sgA sw mask nom)  => str_13 + "e" ;
        attr (sgA sw mask gen)  => str_13 + "en" ;
        attr (sgA sw mask dat)  => str_13 + "en" ;
        attr (sgA sw mask akk)  => str_13 + "en" ;
        attr (sgA sw fem  nom)  => str_13 + "e" ;
        attr (sgA sw fem  gen)  => str_13 + "en" ;
        attr (sgA sw fem  dat)  => str_13 + "en" ;
        attr (sgA sw fem  akk)  => str_13 + "e" ;
        attr (sgA sw neut nom)  => str_13 + "e" ;
        attr (sgA sw neut gen)  => str_13 + "en" ;
        attr (sgA sw neut dat)  => str_13 + "en" ;
        attr (sgA sw neut akk)  => str_13 + "e" ;
        attr (sgA ge mask nom)  => str_13 + "er" ;
        attr (sgA ge mask gen)  => str_13 + "en" ;
        attr (sgA ge mask dat)  => str_13 + "en" ;
        attr (sgA ge mask akk)  => str_13 + "en" ;
        attr (sgA ge fem  nom)  => str_13 + "e" ;
        attr (sgA ge fem  gen)  => str_13 + "en" ;
        attr (sgA ge fem  dat)  => str_13 + "en" ;
        attr (sgA ge fem  akk)  => str_13 + "e" ;
        attr (sgA ge neut nom)  => str_13 + "es" ;
        attr (sgA ge neut gen)  => str_13 + "en" ;
        attr (sgA ge neut dat)  => str_13 + "en" ;
        attr (sgA ge neut akk)  => str_13 + "es" ;
        attr (plA st nom)       => str_13 + "e" ;
        attr (plA st gen)       => str_13 + "er" ;
        attr (plA st dat)       => str_13 + "en" ;
        attr (plA st akk)       => str_13 + "e" ;
        attr (plA sw nom)       => str_13 + "en" ;
        attr (plA sw gen)       => str_13 + "en" ;
        attr (plA sw dat)       => str_13 + "en" ;
        attr (plA sw akk)       => str_13 + "en" ;
        attr (plA ge nom)       => str_13 + "e" ;
        attr (plA ge gen)       => str_13 + "er" ;
        attr (plA ge dat)       => str_13 + "en" ;
        attr (plA ge akk)       => str_13 + "e" ;
        pred => str_13 
      } ;
      cmp => table UseAP {
        attr (sgA st mask nom) => (str_13 + "er")+ "er" ;
        attr (sgA st mask gen) => (str_13 + "er")+ "es" ;
        attr (sgA st mask dat) => (str_13 + "er")+ "em" ;
        attr (sgA st mask akk) => (str_13 + "er")+ "en" ;
        attr (sgA st fem  nom) => (str_13 + "er")+ "e" ;
        attr (sgA st fem  gen) => (str_13 + "er")+ "er" ;
        attr (sgA st fem  dat) => (str_13 + "er")+ "er" ;
        attr (sgA st fem  akk) => (str_13 + "er")+ "e" ;
        attr (sgA st neut nom) => (str_13 + "er")+ "es" ;
        attr (sgA st neut gen) => (str_13 + "er")+ "es" ;
        attr (sgA st neut dat) => (str_13 + "er")+ "em" ;
        attr (sgA st neut akk) => (str_13 + "er")+ "es" ;
        attr (sgA sw mask nom) => (str_13 + "er")+ "e" ;
        attr (sgA sw mask gen) => (str_13 + "er")+ "en" ;
        attr (sgA sw mask dat) => (str_13 + "er")+ "en" ;
        attr (sgA sw mask akk) => (str_13 + "er")+ "en" ;
        attr (sgA sw fem  nom) => (str_13 + "er")+ "e" ;
        attr (sgA sw fem  gen) => (str_13 + "er")+ "en" ;
        attr (sgA sw fem  dat) => (str_13 + "er")+ "en" ;
        attr (sgA sw fem  akk) => (str_13 + "er")+ "e" ;
        attr (sgA sw neut nom) => (str_13 + "er")+ "e" ;
        attr (sgA sw neut gen) => (str_13 + "er")+ "en" ;
        attr (sgA sw neut dat) => (str_13 + "er")+ "en" ;
        attr (sgA sw neut akk) => (str_13 + "er")+ "e" ;
        attr (sgA ge mask nom) => (str_13 + "er")+ "er" ;
        attr (sgA ge mask gen) => (str_13 + "er")+ "en" ;
        attr (sgA ge mask dat) => (str_13 + "er")+ "en" ;
        attr (sgA ge mask akk) => (str_13 + "er")+ "en" ;
        attr (sgA ge fem  nom) => (str_13 + "er")+ "e" ;
        attr (sgA ge fem  gen) => (str_13 + "er")+ "en" ;
        attr (sgA ge fem  dat) => (str_13 + "er")+ "en" ;
        attr (sgA ge fem  akk) => (str_13 + "er")+ "e" ;
        attr (sgA ge neut nom) => (str_13 + "er")+ "es" ;
        attr (sgA ge neut gen) => (str_13 + "er")+ "en" ;
        attr (sgA ge neut dat) => (str_13 + "er")+ "en" ;
        attr (sgA ge neut akk) => (str_13 + "er")+ "es" ;
        attr (plA st nom)      => (str_13 + "er")+ "e" ;
        attr (plA st gen)      => (str_13 + "er")+ "er" ;
        attr (plA st dat)      => (str_13 + "er")+ "en" ;
        attr (plA st akk)      => (str_13 + "er")+ "e" ;
        attr (plA sw nom)      => (str_13 + "er")+ "en" ;
        attr (plA sw gen)      => (str_13 + "er")+ "en" ;
        attr (plA sw dat)      => (str_13 + "er")+ "en" ;
        attr (plA sw akk)      => (str_13 + "er")+ "en" ;
        attr (plA ge nom)      => (str_13 + "er")+ "e" ;
        attr (plA ge gen)      => (str_13 + "er")+ "er" ;
        attr (plA ge dat)      => (str_13 + "er")+ "en" ;
        attr (plA ge akk)      => (str_13 + "er")+ "e" ;
        pred => str_13 + "er" 
      } ;
      sup => table UseAP {
        attr (sgA st mask nom) => (str_13 + "st")+ "er" ;
        attr (sgA st mask gen) => (str_13 + "st")+ "es" ;
        attr (sgA st mask dat) => (str_13 + "st")+ "em" ;
        attr (sgA st mask akk) => (str_13 + "st")+ "en" ;
        attr (sgA st fem nom)  => (str_13 + "st")+ "e" ;
        attr (sgA st fem gen)  => (str_13 + "st")+ "er" ;
        attr (sgA st fem dat)  => (str_13 + "st")+ "er" ;
        attr (sgA st fem akk)  => (str_13 + "st")+ "e" ;
        attr (sgA st neut nom) => (str_13 + "st")+ "es" ;
        attr (sgA st neut gen) => (str_13 + "st")+ "es" ;
        attr (sgA st neut dat) => (str_13 + "st")+ "em" ;
        attr (sgA st neut akk) => (str_13 + "st")+ "es" ;
        attr (sgA sw mask nom) => (str_13 + "st")+ "e" ;
        attr (sgA sw mask gen) => (str_13 + "st")+ "en" ;
        attr (sgA sw mask dat) => (str_13 + "st")+ "en" ;
        attr (sgA sw mask akk) => (str_13 + "st")+ "en" ;
        attr (sgA sw fem nom)  => (str_13 + "st")+ "e" ;
        attr (sgA sw fem gen)  => (str_13 + "st")+ "en" ;
        attr (sgA sw fem dat)  => (str_13 + "st")+ "en" ;
        attr (sgA sw fem akk)  => (str_13 + "st")+ "e" ;
        attr (sgA sw neut nom) => (str_13 + "st")+ "e" ;
        attr (sgA sw neut gen) => (str_13 + "st")+ "en" ;
        attr (sgA sw neut dat) => (str_13 + "st")+ "en" ;
        attr (sgA sw neut akk) => (str_13 + "st")+ "e" ;
        attr (sgA ge mask nom) => (str_13 + "st")+ "er" ;
        attr (sgA ge mask gen) => (str_13 + "st")+ "en" ;
        attr (sgA ge mask dat) => (str_13 + "st")+ "en" ;
        attr (sgA ge mask akk) => (str_13 + "st")+ "en" ;
        attr (sgA ge fem nom)  => (str_13 + "st")+ "e" ;
        attr (sgA ge fem gen)  => (str_13 + "st")+ "en" ;
        attr (sgA ge fem dat)  => (str_13 + "st")+ "en" ;
        attr (sgA ge fem akk)  => (str_13 + "st")+ "e" ;
        attr (sgA ge neut nom) => (str_13 + "st")+ "es" ;
        attr (sgA ge neut gen) => (str_13 + "st")+ "en" ;
        attr (sgA ge neut dat) => (str_13 + "st")+ "en" ;
        attr (sgA ge neut akk) => (str_13 + "st")+ "es" ;
        attr (plA st nom)      => (str_13 + "st")+ "e" ;
        attr (plA st gen)      => (str_13 + "st")+ "er" ;
        attr (plA st dat)      => (str_13 + "st")+ "en" ;
        attr (plA st akk)      => (str_13 + "st")+ "e" ;
        attr (plA sw nom)      => (str_13 + "st")+ "en" ;
        attr (plA sw gen)      => (str_13 + "st")+ "en" ;
        attr (plA sw dat)      => (str_13 + "st")+ "en" ;
        attr (plA sw akk)      => (str_13 + "st")+ "en" ;
        attr (plA ge nom)      => (str_13 + "st")+ "e" ;
        attr (plA ge gen)      => (str_13 + "st")+ "er" ;
        attr (plA ge dat)      => (str_13 + "st")+ "en" ;
        attr (plA ge akk)      => (str_13 + "st")+ "e" ;
        pred => (str_13 + "st")+ "en" 
      }
      }
    } ;
  oper regCN : Str -> Gender -> {
    g : Gender ;
    s : Number => Case => Str 
  }
  = \x_14 -> \y_15 -> {
    g : Gender = y_15 ;
    s : Number => Case => Str = table Number {
      sg => table Case {
        nom => x_14 ;
        gen => x_14 + "s" ;
        dat => x_14 ;
        akk => x_14 
      } ;
      pl => table Case {
        nom => x_14 ;
        gen => x_14 ;
        dat => x_14 + "n" ;
        akk => x_14 
      }
      }
    } ;

}
