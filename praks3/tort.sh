echo -n "Sisesta aluskandiku pikkus cm: "
read pikkus

echo -n "Sisesta aluskandiku laius cm: "
read laius

echo -n "Sisesta küpsise pikkus cm: "
read kupis_pikkus

echo -n "Sisesta küpsise laius cm: "
read kupis_laius

echo -n "Mitu kihti torti soovid: "
read kihid

echo -n "Mitu küpsist on ühes pakis: "
read pakis


read_kupsised_pikkuses=`expr \( $pikkus + $kupis_pikkus - 1 \) / $kupis_pikkus`
read_kupsised_laiuses=`expr \( $laius + $kupis_laius - 1 \) / $kupis_laius`


kupsised_kihis=`expr $read_kupsised_pikkuses \* $read_kupsised_laiuses`
kupsised_kokku=`expr $kupsised_kihis \* $kihid`


pakid=`expr \( $kupsised_kokku + $pakis - 1 \) / $pakis`

echo "Osta poest $pakid pakki küpsiseid."
