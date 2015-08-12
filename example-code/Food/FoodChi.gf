concrete FoodChi of Food = {
  lincat
    Comment, Item, Kind, Quality = Str ;

  lin
    Pred item quality = item ++ "是" ++ quality ;
    This kind = "这 个" ++ kind ;
    That kind = "那 个" ++ kind ;
    Mod quality kind = quality ++ kind ;
    Wine = "酒" ;
    Cheese = "奶 酪" ;
    Fish = "鱼" ;
    Very quality = "非 常" ++ quality ;
    Fresh = "新 鲜" ++ "的" ;
    Warm = "温 热" ++ "的" ;
    Italian = "意 大 利 式" ++ "的" ;
    Expensive = "昂 贵" ++ "的" ;
    Delicious = "美 味" ++ "的" ;
    Boring = "难 吃" ++ "的" ;
}