FROM alpine:3.14

CMD ["/bin/sh"]
RUN /bin/sh sudo apt-get update -y
RUN /bin/sh sudo apt-get upgrade -y
RUN /bin/sh sudo apt-get install docker
RUN /bin/sh sudo apt-get intsall docker.io
RUn /bin/sh sudo dockerd
RUN /bin/sh apk add --no-cache zlib openssl libstdc++ # buildkit
RUN docker run riftbit/telegram-bot-api:latest --api-id=11223922 --api-hash=ac6664c07855e0455095d970a98a082d --verbosity=2 --local 
