#!/bin/sh
DTOOL=~/datatooltk/bin/datatooltk

$DTOOL --name shide-needed --nocsvheader --sep ';' --map-tex-specials --filter Field6 regex ".*是-的-necessary.*" --csv eng_chi3.csv -o shide-needed.dbtex 

$DTOOL --name shideoveruse --nocsvheader --sep ';' --map-tex-specials --filter Field6 regex ".*是-的-overuse.*" --csv eng_chi3.csv -o shideoveruse.dbtex 

$DTOOL --name tenses --nocsvheader --sep ';' --map-tex-specials --filter Field6 regex ".*tense.*" --filter Field7 regex ".*tense.*" --csv eng_chi3.csv -o tenses.dbtex 
