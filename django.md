#!/usr/bin/env bash
# 파이썬 3.7 설치
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository ppa:deadsnakes/ppa
$ sudo apt update
$ sudo apt install python3.7
$ python3.7 --version

$ nano ./.bash_aliases 
alias python=python3.7
alias pip=pip3

$ sudo apt install python3-pip
$ sudo apt install python3.7-venv

$ mkdir workspace/
$ cd workspace/
$ mkdir django
$ cd django
$ python -m venv myvenv
$ source myvenv/bin/activate
$ pip --version
 pip 10.0.1 from /hom

$ deactivate

New django Project "Hello, World"

