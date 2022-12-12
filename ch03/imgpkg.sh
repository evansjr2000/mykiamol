#!/bin/bash -x
imgpkg copy -i evansjr/numbers-api --to-tar=numbers-api.tar
imgpkg copy -i evansjr/numbers-web --to-tar=numbers-web.tar
imgpkg copy -i evansjr/numbers-web:v2 --to-tar=numbers-web-v2.tar
