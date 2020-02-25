
Part I. 파이썬 3.7 설치 (ubuntu 18.04 LTS)

    $ sudo apt update
    $ sudo apt install software-properties-common
    $ sudo add-apt-repository ppa:deadsnakes/ppa
    $ sudo apt update
    $ sudo apt install python3.7
    $ python3.7 --version

    $ nano ./.bash_aliases 
    alias python=python3.7
    alias pip=pip3

    $ source ./.bash_aliases

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
    $ pip install django
    $ deactivate


Part II. 장고 웹서버 실행

    $ cd workspace/django
    $ source myvenv/bin/activate
    $ django-admin startproject start
    $ cd start
    $ python manage.py runserver 0.0.0.0:8000

Part III. 장고 웹서버 첫 프로젝트 생성

    $ python manage.py startapp hello
    $ 




db 테이블 생성 후 최종 디비에 반영하기

$ python manage.py makemigrations
$ python manage.py migrate





