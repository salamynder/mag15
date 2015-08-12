concrete FoodChi2 of Food = {
  lincat
    Comment, Item= Str ;
    Kind = {s,c : Str} ;    -- c is the classifier (ZEW)
    Quality = {s,p : Str} ; -- p is the particle 的 or empty 

  lin
    Pred item quality = item ++ "是" ++ quality.s ++ quality.p ;
    This kind = "这" ++ kind.c ++ kind.s ;
    That kind = "那" ++ kind.c ++ kind.s ;
    Mod quality kind = {
      s = quality.s ++ quality.p ++ kind.s ;
      c = kind.c
      } ;
    Wine = geKind "酒" ;
    Cheese = geKind (word "奶酪") ;
    Fish = geKind "鱼" ;
    Very quality = longQuality ( word ("非常") ++ quality.s ) ;
    Fresh = longQuality (word "新鲜") ;
    Warm = longQuality (word "温热") ;
    Italian = longQuality (word "意大利式") ;
    Expensive = longQuality (word "昂贵") ;
    Delicious = longQuality (word "美味") ;
    Boring = longQuality (word "难吃") ;

  oper
    geKind : Str -> {s,c : Str} = \s ->
      {s = s ; c = "个"} ;
    longQuality : Str -> {s,p : Str} = \s ->
      {s = s ; p = "的"} ;

    bword : Str -> Str -> Str = \x,y -> x ++ y ; -- change to x + y to treat words as single tokens

    word : Str -> Str = \s -> case s of {
      x@? + y@? + z@? + u@? => bword x (bword y (bword z u)) ;
      x@? + y@? + z@? => bword x (bword y z) ;
      x@? + y@? => bword x y ;
      _ => s
      } ;
}
--INFO: - bei mehreren Attributen darf nur ein "de" vor dem Bezugswort bleiben:
-- z.B.: 那 个 新 鲜 的 美 味 的 鱼 是 新 鲜 的
--                  ^
-- p -bracket "那 个 新 鲜 的 美 味 的 鱼 是 新 鲜 的"
-- (Comment:15
--  (Item:12 那
--           (Kind:11
--            (Kind:10
--             (Kind:9 个)))
--           (Kind:11
--            (Quality:6 新 鲜)
--            (Quality:6 的)
--            (Kind:10
--             (Quality:8 美 味)
--             (Quality:8 的)
--             (Kind:9 鱼))))
--  是
--  (Quality:14 新 鲜)
--  (Quality:14 的))

-- http://www.chinese-forums.com/index.php?/topic/45541-applying-multiple-adjectives-to-a-noun/ Extrembeispiel:

-- The big, red, angry, intelligent, fat, hungry, murderous, apple-loving, kung-fu, white-haired, singing whilst laughing, cybernetic monkey"

-- 大的、红的、生气的、机智的、胖的、饥饿的、凶残的、喜爱苹果的、会功夫的、又唱又笑的白毛控制论猴 (I don't know what cybernetic means :wall ,控制论seems wrong here)

-- 庞大、鲜红、愤怒、机智、肥胖、饥饿、凶残、热爱苹果、擅长武术、亦唱亦笑的白毛控制论猴。

-- 大且红 聪慧却又愤怒凶残 胖而饥饿  武术精湛 边唱边笑 的控制论白猴儿 (hier wurdre murderous von einem native speaker zu wütend (fennu) verschoben; das macht zumindest deutlich, dass man versuchen sollte ähnliche Adjektive zu gruppieren (siehe auch folgender Link)
-- Die Ordnung der Adjektive ist auch nicht wirklich vereinbar: http://chinese.stackexchange.com/questions/9190/what-are-the-rules-in-chinese-for-adjective-order-when-multiple-adjectives-descr
-- in Zeitungstexten ist es aber soweit ich weiß, nichts ungewöhnliches Attribute getrennt durch das Aufzählungskomma vorzufinden; TODO?: das könnte eigentlich hier implementiert werden?