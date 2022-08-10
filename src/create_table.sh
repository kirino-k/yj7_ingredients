#!/bin/bash

DIR_SRC=$(cd $(dirname $0); pwd)
DIR_DL=${DIR_SRC}/dl
DIR_TMP=${DIR_SRC}/tmp
DIR_OUT=${DIR_SRC}/out

if [ ! -e ${DIR_DL} ]; then
  mkdir ${DIR_DL}
fi

if [ ! -e ${DIR_TMP} ]; then
  mkdir ${DIR_TMP}
fi

if [ ! -e ${DIR_OUT} ]; then
  mkdir ${DIR_OUT}
fi

PATH_TMP=${DIR_TMP}/tmp_$(date +%Y%m%d)
if [ -f ${PATH_TMP} ]; then
  rm ${PATH_TMP}
fi

PATH_OUT=${DIR_OUT}/yj7_ingredients_$(date +%Y%m%d).csv

while read line; do
  if [[ $line =~ tp[0-9]{8} ]]; then
    date=$(echo $line | sed -E 's@^.*tp([0-9]{8}).*$@\1@')
  else
    date=$(echo $line | sed -E 's@^.*([0-9]{4})/[0-9]{2}/xls/tp([0-9]{4}).*$@\1\2@')
  fi
  wget -nc -P ${DIR_DL} $line
  file_name=$(echo $line | sed -E 's@^.*/(tp.*\.xlsx?)@\1@')
  if [[ ${file_name} =~ xlsx ]]; then
    command=xlsx2csv
  else
    command="python3 ${DIR_SRC}/xls2csv.py"
  fi
  if [ ${file_name} = "tp0423-1.xls" -o ${file_name} = "tp0620-1.xls" ]; then
    paste -d ',' \
      <($command ${DIR_DL}/${file_name} | cut -d ',' -f 2 | nkf -Z) \
      <($command ${DIR_DL}/${file_name} | cut -d ',' -f 3) |
      grep -E '^[0-9A-Z]{12}' |
      sed -E "s/^([0-9A-Z]{7})([0-9A-Z]{5})(,.*)$/\1\3,$date/" |
      sort -u >> ${PATH_TMP}
  else
    $command ${DIR_DL}/${file_name} |
      cut -d ',' -f 2,3 | 
      grep -E '^[0-9A-Z]{12}' |
      sed -E "s/^([0-9A-Z]{7})([0-9A-Z]{5})(,.*)$/\1\3,$date/" |
      sort -u >> ${PATH_TMP}
  fi
done < ${DIR_SRC}/file_info

echo 'YJ7コード,成分名' > ${DIR_OUT}/output.csv
cat ${PATH_TMP} |
  awk -F ',' 'BEGIN {
    OFS = ","
  } {
    if ($3 > max[$1]) {
      max[$1] = $3
      name[$1] = $2
    }
  } END {
    for (key in max) {
      print key,name[key]
    }
  }' |
  sort >> ${DIR_OUT}/output.csv
    
cat ${DIR_OUT}/output.csv |
  nkf -s > ${PATH_OUT}

