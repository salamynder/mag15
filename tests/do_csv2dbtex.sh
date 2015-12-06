#!/bin/sh

~/datatooltk/bin/datatooltk --name shideoveruse --nocsvheader --sep ';' --map-tex-specials --filter Field6 regex ".*overuse.*" --csv eng_chi3.csv -o shideoveruse.dbtex 

~/datatooltk/bin/datatooltk --name tenses --nocsvheader --sep ';' --map-tex-specials --filter Field6 regex ".*tense.*" --filter Field7 regex ".*tense.*" --csv eng_chi3.csv -o tenses.dbtex 
