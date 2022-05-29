FROM riftbit/telegram-bot-api:latest
FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install docker -y
RUN apt-get install docker.io -y
RUN su
RUN service start docker
RUN service enable docker
RUN servicerestart docker

ENV ID=11223922
ENV HASH=ac6664c07855e0455095d970a98a082d
ENV V=2
ENV DEFAULT_ARGS "-api-id=11223922 -api-hash=ac6664c07855e0455095d970a98a082d -verbosity=2 -local"

CMD docker run --help
CMD docker run -p 8081:8081 -e TELEGRAM_API_ID=11223922 -e TELEGRAM_API_HASH=ac6664c07855e0455095d970a98a082d -t riftbit/telegram-bot-api
