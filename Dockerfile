FROM riftbit/telegram-bot-api:latest

CMD -api-id=${id} -api-hash=${hash},-verbosity=${v} -local
