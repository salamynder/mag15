concrete FoodGer of Food = {
  lincat
    Comment = {s : Str} ;
    Item    = {s : Str ; g : Gender ; n : Number} ;
    Kind    = {s : Number => Str ; g : Gender} ;
    Quality = {s : Number => Str } ;
  lin
    Pred item quality = {s = item.s ++ copula ! item.n ++ quality.s ! item.n } ;

    This kind = {s = "Dieser" ++ kind.s ! Sg ; n = Sg ; g = kind.g} ;
    These kind = {s = "Diese" ++ kind.s ! Pl ; n = Pl ; g = kind.g} ;
    -- That kind = "Jener" ++ kind ;

    Mod qual kind = {s = \\n => qual.s ! n
                             ++ kind.s ! n ;
                     g = kind.g
      } ;

    Wine = {
      s = table {Sg => "Wein" ; Pl => "Weine" } ;
      g = Masc ;
      } ;
    -- Cheese = "Käse" ;
    -- Fish = "Fisch" ;
    -- Very quality = "sehr" ++ quality ;
    -- Fresh = "frisch" ;
    -- Warm = "warm" ;
    Italian = {
      s = table {Sg => "italienische" ; Pl => "italienischen" } ;
      } ;
    -- Expensive = "teuer" ;
    -- Delicious = "lecker" ;
    -- Boring = "geschmacklos" ;
  param
    Gender = Masc | Fem ;
    Number = Sg | Pl ;
  oper
    copula : Number => Str =
      table { Sg => "ist" ; Pl => "sind" } ;
}  