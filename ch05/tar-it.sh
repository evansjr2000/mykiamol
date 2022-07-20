#!/bin/bash -x

imgpkg copy -i  postgres:11.6-alpine     --to-tar=./postgres-11.6-alpine.tar
imgpkg copy -i  kiamol/ch03-sleep        --to-tar=kiamol-ch03-sleep.tar
imgpkg copy -i  nginx:1.17-alpine        --to-tar=./nginx-1.17-alpine.tar
imgpkg copy -i  kiamol/ch04-todo-list    --to-tar=./kiamol-ch04-todo-list.tar
imgpkg copy -i  kiamol/ch05-pi           --to-tar=./kiamol-ch05-pi.tar
