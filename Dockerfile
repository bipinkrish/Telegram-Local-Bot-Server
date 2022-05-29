FROM alpine:3.14

RUN sudo apt-get update -y
RUN sudo apt-get upgrade -y
RUN sudo apt-get install docker
RUN sudo apt-get intsall docker.io
RUn sudo dockerd
RUN apk add --no-cache zlib openssl libstdc++ # buildkit
RUN docker run riftbit/telegram-bot-api:latest --api-id=11223922 --api-hash=ac6664c07855e0455095d970a98a082d --verbosity=2 --local 
