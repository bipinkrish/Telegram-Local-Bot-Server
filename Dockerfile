FROM riftbit/telegram-bot-api:latest

ENV ID=11223922
ENV HASH=ac6664c07855e0455095d970a98a082d
ENV V=2

CMD -api-id=${ID} -api-hash=${HASH},-verbosity=${V} -local
