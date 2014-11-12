#!/bin/ash

for i in *
 do
  D=$(date -r $i +%F)
  T=$(date -r $i +%T)
  
  T=$(echo $T | sed 's/:/./g')
  SUFFIX=$(echo ${i##*.})  
  FILENAME=$(echo $D $T.$SUFFIX)
  
  
  if [ "$SUFFIX" != "sh" ]
   then
    echo "Renaming $i to $FILENAME"
    mv -i "$i" "$FILENAME"
  fi
  
done
