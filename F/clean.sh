grep -Ev 'LF' filter.S > filterTmp.S
cp filterTmp.S filter.S
grep -Ev '\.cfi' filter.S > filterTmp.S
cp filterTmp.S filter.S
sed 's/#/;/' filter.S > filterTmp.S
cp filterTmp.S filter.S
rm filterTmp.S
