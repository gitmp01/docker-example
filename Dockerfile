FROM python:2.7-alpine3.8

WORKDIR /home/app

COPY ./requirements.txt .

RUN apk add python2-dev build-base linux-headers pcre-dev && \
    pip install -r requirements.txt

# Source files

COPY ./api.py . 
COPY ./conf.ini .

CMD ["uwsgi", "--ini", "conf.ini"]