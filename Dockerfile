FROM alpine:3.14

RUN apk add --no-cache zlib openssl libstdc++ # buildkit
RUN docker run riftbit/telegram-bot-api:latest --api-id=11223922 --api-hash=ac6664c07855e0455095d970a98a082d --verbosity=2 --local 
