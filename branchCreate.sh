#!/bin/bash
echo hello world
x=1
y=1
j=1
while [ $x -le 1000 ]
do
  echo "Welcome $x times"
  string=AA_PR_$((x))
  git branch $string
  git checkout -b $string
  git push -u origin $string
  git push --set-upstream origin $string
  #git push -u origin $string
  echo $string
  x=$(( $x + 1 ))
  sh ./createCOmmit.sh
  rm -rf random*
  git add .
  git commit -m "SDDD"
  git push
done

