FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://get.docker.com | sh
RUN chmod 777 /var/run/docker.sock
RUN docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock my-container

CMD docker run -p 8081:8081 -e TELEGRAM_API_ID=11223922 -e TELEGRAM_API_HASH=ac6664c07855e0455095d970a98a082d -t riftbit/telegram-bot-api
