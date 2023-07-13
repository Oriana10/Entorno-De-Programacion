FROM alpine

RUN apk update && apk add bash imagemagick curl

WORKDIR /app

ADD scripts scripts
ADD dict.csv dict.csv

ENTRYPOINT ["bash","/app/scripts/menu.sh"]

