#! /bin/sh

cat << comment
 * when you want to write loop process
   like high-level language.
comment
echo "\n"

#---[ using 'while' ]------
count=0
while [ $count -le 10 ];
  do
    echo "* $count"
    count=`expr $count + 2`
  done
echo "\n"

#---[ using 'if' ]------
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

#---[ using 'for' ]------
count=0
start_num=70 end_num=85
num_exec=`expr $end_num - $start_num + 1`
for count in `yes "" | cat -n | head -$end_num |tail -$num_exec`;
  do
    echo "* $count"
  done
echo "\n"

#---[ using 'for + awk' ]------
count=0
start_num=30 end_num=60 increment_num=3
for count in `yes "" | cat -n | head -$end_num | awk "(NR % $increment_num == 0) && (NR >= $start_num) {print NR}"`
  do
    echo "* $count"
  done
echo "\n"
