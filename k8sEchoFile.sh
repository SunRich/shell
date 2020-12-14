#!/bin/bash
if [ "$2" == "" ];
then
    echo "need fileValue";
    exit;
elif [ "$3" == "" ]; then
     echo "need fileName";
     exit;
fi


for pods in $(kubectl get pods | grep "$1" |awk '{ print $1 }') ; do
    kubectl exec -it ${pods} -- bash -c "echo ${2} > ${3}"
done