echo -n "Sisesta aluskandiku pikkus cm: "
read pikkus

echo -n "Sisesta aluskandiku laius cm: "
read laius

echo -n "Sisesta küpsise pikkus cm: "
read küpsis

echo -n "Sisesta küpsise laius cm: "
read küpsis_laius

echo -n "Mitu kihti torti soovid: "
read kihid

echo -n "Mitu küpsist on ühes pakis: "
read pakis

küpsised_reas=`expr $pikkus / $küpsis`
küpsised_kõrvuti=`expr $laius / $küpsis_laius`
küpsised_kihis=`expr $küpsised_reas \* $küpsised_kõrvuti`
küpsiseid_kokku=`expr $küpsised_kihis \* $kihid`
pakke=`expr $küpsiseid_kokku / $pakis`
jääk=`expr $küpsiseid_kokku % $pakis`

if [ $jääk -ne 0 ]
then
    pakke=`expr $pakke + 1`
fi

echo "Vajalik küpsiste arv: $küpsiseid_kokku"
echo "Poest tuleb osta $pakke pakki küpsiseid."
