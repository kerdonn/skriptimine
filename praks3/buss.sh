echo -n "Sisesta reisijate arv: "
read reisijad

echo -n "Sisesta kohtade arv ühes bussis: "
read kohad

bussid=`expr $reisijad / $kohad`
maha=`expr $reisijad % $kohad`

echo "Täielikult täidetud busse: $bussid"
echo "Maha jääb inimesi: $maha"
