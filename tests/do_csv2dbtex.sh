#!/bin/sh
DTOOL=~/datatooltk/bin/datatooltk

$DTOOL --name shide-needed --nocsvheader --sep ';' --map-tex-specials \
       --filter Field6 regex ".*是-的-necessary.*" \
       --csv eng_chi3.csv -o shide-needed.dbtex 

$DTOOL --name shideoveruseb --nocsvheader --sep ';' --map-tex-specials \
       --filter-and \
       --filter Field6 regex ".*是-的-overuse.*" \
       --filter Field4 eq "B" \
       --csv eng_chi3.csv -o shideoveruse-b.dbtex 

$DTOOL --name shideoveruseg --nocsvheader --sep ';' --map-tex-specials \
       --filter-and \
       --filter Field6 regex ".*是-的-overuse.*" \
       --filter Field4 eq "G" \
       --sort  -Field2 \
       --csv eng_chi3.csv -o shideoveruse-g.dbtex 

$DTOOL --name shideoveruses --nocsvheader --sep ';' --map-tex-specials \
       --filter-and \
       --filter Field6 regex ".*是-的-overuse.*" \
       --filter Field4 eq "S" \
       --csv eng_chi3.csv -o shideoveruse-s.dbtex 



# Zeiten und Konditional
$DTOOL --name tenses --nocsvheader --sep ';' --map-tex-specials \
       --filter Field6 regex ".*tense.*" \
       --sort  -Field6 \
       --csv eng_chi3.csv -o tenses.dbtex 

$DTOOL --name tenses --nocsvheader --sep ';' --map-tex-specials \
       --filter Field7 regex ".*conditionalTense.*" \
       --csv eng_chi3.csv -o condTense.dbtex 
