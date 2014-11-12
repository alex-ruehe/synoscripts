#!/bin/ash
echo "BEGIN"
for i in *
 do
  TMP=$(echo $i | sed 's/IMG_//g')
  TMP=$(echo $TMP | sed 's/_/ /g')
  P1=$(echo $TMP | sed 's/\(^[^ ][^ ]*\) \([^ ][^ ]*\)$/\1/')
  P2=$(echo $TMP | sed 's/\(^[^ ][^ ]*\) \([^ ][^ ]*\)$/\2/')

  YEAR=$(echo $P1 | sed 's/\([0-9]\{4\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)/\1-\2-\3/g')
  TIME=$(echo $P2 | sed 's/\([0-9]\{2\}\)\([0-9]\{2\}\)\([0-9]\{2\}\)/\1.\2.\3/g')

  FILENAME=$(echo $YEAR $TIME)
  SUFFIX=$(echo ${FILENAME##*.})
  
  echo "$i becomes $FILENAME ?"

  if [ "$i" != "$FILENAME" ] && [ "$SUFFIX" == "JPG" ]
          then
                  echo "Renaming $i to $FILENAME"
                  mv -i "$i" "$FILENAME"
  fi

done