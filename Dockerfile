FROM ruby:2.3.4-jessie

COPY docker-timing /docker-timing

RUN ./docker-timing

RUN apt-get update

RUN ./docker-timing apt-get update

RUN sleep 1

RUN ./docker-timing sleep

RUN cat /docker-timing.log
