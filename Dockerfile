FROM riftbit/telegram-bot-api:latest
FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install docker -y
RUN apt-get install docker.io -y

ENV ID=11223922
ENV HASH=ac6664c07855e0455095d970a98a082d
ENV V=2
ENV DEFAULT_ARGS "-api-id=11223922 -api-hash=ac6664c07855e0455095d970a98a082d -verbosity=2 -local"

CMD telegram-bot-api -h
