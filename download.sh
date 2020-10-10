#/bin/bash

node search.js > a.json
node parse.js > b.txt

photodir=$1

rawdir="${photodir}/raw"
[[ -d ${rawdir} ]] || (mkdir -p "${rawdir}" && echo "created dir ${rawdir}" )

_1920xdir="${photodir}/1920x"
[[ -d ${_1920xdir} ]] || (mkdir -p "${_1920xdir}" && echo "created dir ${_1920xdir}" )

_1080xdir="${photodir}/1080x"
[[ -d ${_1080xdir} ]] || (mkdir -p "${_1080xdir}" && echo "created dir ${_1080xdir}" )

j=1;
for i in `cat b.txt`;
do
	echo "${j}. ${i}";
	curl $i > "${rawdir}/${j}.jpeg";
	sleep 3;
	((j++));
done

for i in ${photodir}/raw/*.jpeg;
do
	j=$(basename -- $i);

	echo "${i} --> ${_1920xdir}/${j}";
	convert $i -resize 1920x1080 -quality 80 ${_1920xdir}/$j;

	echo "${i} --> ${_1080xdir}/${j}";
	convert $i -resize 1080x -quality 80 ${_1080xdir}/$j;
done

