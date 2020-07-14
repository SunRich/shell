#!/bin/bash
fetchDel(){
  for branch in $(git branch -l |grep 'lwf'); do
     delOne $branch;
  done
}
delOne(){
    read -n1 -p "Do you want to del $1 [Y/N]?" answer
    case $answer in
    (Y | y)
          git push --delete origin $1;
          git branch -D $1;;
    (N | n)
          echo "ok, good bye";;
    esac

}

if [ "$1" == "delete" ]
then
  delOne $2
else
  fetchDel
fi
