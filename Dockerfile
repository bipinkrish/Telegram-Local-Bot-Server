FROM riftbit/telegram-bot-api:latest

RUN apk add --no-cache zlib openssl libstdc++ # buildkit
RUN telegram-bot-api --api-id=11223922 --api-hash=ac6664c07855e0455095d970a98a082d --verbosity=2 --local 
