#!/bin/bash



# col 3 = froment
# col 4 = seigle
# col 5 = pesette
# col 6 = avoine
# col 7 = feves
# col 8 = pois
# col 9 = nayann


sed '1d' mercuriales_annecy.csv > mercuriales_travail.csv
nb_ligne=`cat  mercuriales_travail.csv | wc -l`

#sed 's/,,/,nan,/g' 


# Creation liste points
seq -s, 1 1 $nb_ligne > xtrick
cut -d, -f2 mercuriales_travail.csv > dates
sed ':a;N;$!ba;s/\n/,/g' dates | sed 's/^/xticklabels=\{/' | sed 's/$/\}/' > xticklabels
rm dates
#rm points


