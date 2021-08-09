cd /home/ganesh/Documents/spectrummodels/model/
#for i in $(ls)

for i in $(ls *.mod)

do

echo "$i is processing"

#remove 1st 23 lines
#sed '1,23d' $i > $i.mod

#remove lines start with 'PRADK' to 'BEGIN' line
sed '/PRADK/,/BEGIN/d' $i > $i.mod

echo "$i is ready" 

done

