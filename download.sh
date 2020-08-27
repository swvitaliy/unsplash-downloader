#/bin/bash

node search.js > a.json
node parse.js > b.txt

j=1;
for i in `cat b.txt`;
do
	echo "${j}. ${i}";
	curl $i > "photos/raw/${j}.jpeg";
	sleep 3;
	((j++));
done

for i in photos/raw/*.jpeg;
do
	j=$(basename -- $i);
	echo "${i} --> photos/1920x1080/${j}";
	convert $i -resize 1920x1080 -quality 80 photos/1920x1080/$j;
done

