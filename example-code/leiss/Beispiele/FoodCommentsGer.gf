--# -path=.:../resource:prelude

concrete FoodCommentsGer of FoodComments = 
  -- LexGer.gf noch zu schreiben!
  CommentsGer ** open LexGer in {
  lin
    Wine = regN "Wein" ;
    Cheese = regN "Käse" ;
    Fish = mkN "Fisch" ;
    Pizza = regN "Pizza" ;
    Fresh = mkA "frisch" ;
    Warm = mkA "warm" ;
    Italian = mkA "italienisch" ;
    Expensive = mkA "teuer" ;
    Delicious = mkA "schmackhaft" ;
    Boring = mkA "fade" ;

}

