#!/bin/sh
DTOOL=~/datatooltk/bin/datatooltk

$DTOOL --name shide-needed --nocsvheader --sep ';' --map-tex-specials --filter Field6 regex ".*是-的-necessary.*" --csv eng_chi3.csv -o shide-needed.dbtex 

$DTOOL --name shideoveruseb --nocsvheader --sep ';' --map-tex-specials \
       --filter-and \
       --filter Field6 regex ".*是-的-overuse.*" \
       --filter Field4 eq "B" \
       --csv eng_chi3.csv -o shideoveruse-b.dbtex 
$DTOOL --name shideoveruseg --nocsvheader --sep ';' --map-tex-specials \
       --filter-and \
       --filter Field6 regex ".*是-的-overuse.*" \
       --filter Field4 eq "G" \
       --csv eng_chi3.csv -o shideoveruse-g.dbtex 
$DTOOL --name shideoveruses --nocsvheader --sep ';' --map-tex-specials \
       --filter-and \
       --filter Field6 regex ".*是-的-overuse.*" \
       --filter Field4 eq "S" \
       --csv eng_chi3.csv -o shideoveruse-s.dbtex 

$DTOOL --name tenses --nocsvheader --sep ';' --map-tex-specials --filter Field6 regex ".*tense.*" --filter Field7 regex ".*tense.*" --csv eng_chi3.csv -o tenses.dbtex 
