#!/bin/bash

kubectl get deployment $1 -o yaml | kubectl replace --force -f -