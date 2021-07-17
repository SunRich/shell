#!/usr/bin/env bash
if [ "$1" == "prod" ]
then
	rm -rf ~/.kube
	cp -r ~/kube-config/.kube-prod/ ~/.kube
elif [ "$1" == "dev" ]
then

	rm -rf ~/.kube
	cp -r ~/kube-config/.kube-dev/ ~/.kube
elif [ "$1" == "174" ]
then

	rm -rf ~/.kube
	cp -r ~/kube-config/.kube-174/ ~/.kube
else
	rm -rf ~/.kube
	cp -r ~/kube-config/.kube-local/ ~/.kube
fi
