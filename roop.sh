#! /bin/sh

cat << comment
 * when you want to write roop process
   like high-level language.
comment
echo "\n"

#---[using 'while']------
count=0
while [ $count -le 10 ];
  do 
    echo "* $count"
    count=`expr $count + 2`
  done
echo "\n"

#---[using 'if']------
count=0
while :
  do
    if [ $count -le 10 ]; then
      echo "* $count"
      count=`expr $count + 3`
    else
      break
    fi
  done
echo "\n"

#---[using 'for']------

