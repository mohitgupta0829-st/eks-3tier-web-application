#!/bin/bash

kubectl apply -f Pvolume.yml
kubectl apply -f PersistentVolumeClaim-sql.yml
kubectl apply -f secret-sql.yml
kubectl apply -f Service-sql.yml
kubectl apply -f StatefulSet-sql.yml
