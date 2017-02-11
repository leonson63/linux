# !/bin/bash
while [[ 1 -gt 0 ]]
do
read a b c
if [[ "$a" == "exit" ]]; then
  echo "bye"
  exit 0
fi

oper=""
for op in + - * / % ** ; do
  if [[ "$b" == "$op" ]]; then
    oper=$b
  fi
done

if [[ -z "$c" || -z "$oper" ]]; then
  echo "error"
  exit 1
fi
let "r=$a $b $c"
echo "$r"

done
