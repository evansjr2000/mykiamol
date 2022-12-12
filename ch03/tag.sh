#!/bin/bash -x
docker tag kiamol/ch03-numbers-api evansjr/numbers-api
docker push evansjr/numbers-api
docker tag kiamol/ch03-numbers-web  evansjr/numbers-web
docker push evansjr/numbers-web
docker tag kiamol/ch03-numbers-web:v2 evansjr/numbers-web:v2
docker push evansjr/numbers-web:v2
