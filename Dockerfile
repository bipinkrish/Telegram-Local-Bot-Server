FROM docker:dind
RUN docker run -ti -v /var/run/docker.sock:/var/run/docker.sock docker
CMD docker run -p 8081:8081 -e TELEGRAM_API_ID=11223922 -e TELEGRAM_API_HASH=ac6664c07855e0455095d970a98a082d -t riftbit/telegram-bot-api
