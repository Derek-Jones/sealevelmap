#
# allkml.sh, 14 Sep 14

for f in con-0.5-eurasia/N*.con
   do
   csvf=`basename $f .hgt.csv.con`
   echo "$csvf"
#   ./mkkml.sh "$f" > kml/"$csvf.kml"

   ./mkkml.sh "$f" | \
	awk -f filtkml.awk > kml/"$csvf.kml"
   done

