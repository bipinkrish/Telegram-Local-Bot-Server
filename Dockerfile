FROM riftbit/telegram-bot-api:latest

RUN -api-id=${id} -api-hash=${hash},-verbosity=${v} -local
