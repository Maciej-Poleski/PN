grep -Ev 'LF' natural2.S > natural3.S
cp natural3.S natural2.S
grep -Ev '\.cfi' natural2.S > natural3.S
cp natural3.S natural2.S
sed 's/#/;/' natural2.S > natural3.S
cp natural3.S natural2.S
